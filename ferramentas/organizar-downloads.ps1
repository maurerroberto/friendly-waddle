<#
Organiza a pasta Downloads em subpastas por tipo de arquivo.

Por padrão só MOSTRA o que faria (simulação). Nada é apagado: os arquivos
só mudam de lugar, e cada mudança fica registrada num arquivo .csv dentro
da própria pasta, para poder desfazer.

Uso (no PowerShell):
  # 1) Simular (não mexe em nada)
  .\organizar-downloads.ps1 -Pasta "D:\Servidor\Downloads"

  # 2) Organizar de verdade
  .\organizar-downloads.ps1 -Pasta "D:\Servidor\Downloads" -Executar

  # 3) Desfazer, usando o registro gerado no passo 2
  .\organizar-downloads.ps1 -Desfazer "D:\Servidor\Downloads\_organizacao-AAAAMMDD-HHMMSS.csv"

Sem -Pasta, usa a pasta Downloads do Windows do usuário.
Se o Windows bloquear o script, rode antes (só vale para esta janela):
  Set-ExecutionPolicy -Scope Process Bypass
#>
param(
    [string]$Pasta,
    [switch]$Executar,
    [string]$Desfazer
)

$ErrorActionPreference = 'Stop'

# Cada pasta de destino e as extensões que vão para ela.
$categorias = [ordered]@{
    'PDF'                = @('.pdf')
    'Documentos'         = @('.doc', '.docx', '.odt', '.rtf', '.txt', '.md')
    'Planilhas'          = @('.xls', '.xlsx', '.xlsm', '.csv', '.ods')
    'Apresentacoes'      = @('.ppt', '.pptx', '.odp')
    'Imagens'            = @('.jpg', '.jpeg', '.png', '.gif', '.webp', '.bmp', '.tif', '.tiff', '.heic', '.svg', '.ico')
    'Videos'             = @('.mp4', '.mov', '.avi', '.mkv', '.wmv', '.webm', '.m4v')
    'Audios'             = @('.mp3', '.wav', '.m4a', '.ogg', '.opus', '.aac', '.flac')
    'Compactados'        = @('.zip', '.rar', '.7z', '.tar', '.gz', '.tgz')
    'Instaladores'       = @('.exe', '.msi', '.msix', '.appx')
    'Codigo e dados'     = @('.json', '.js', '.py', '.html', '.htm', '.xml', '.ps1', '.bat', '.cmd', '.sql')
    'Mapas e plantas'    = @('.kml', '.kmz', '.dwg', '.dxf', '.shp')
}
$pastaOutros     = 'Outros'
$pastaDuplicados = '_Revisar\Duplicados'

# Arquivos que nunca são movidos (downloads em andamento e arquivos do sistema).
$ignorarExtensoes = @('.crdownload', '.part', '.partial', '.tmp', '.download')
$ignorarNomes     = @('desktop.ini', 'thumbs.db')

function Get-PastaDestino([string]$extensao) {
    foreach ($nome in $categorias.Keys) {
        if ($categorias[$nome] -contains $extensao) { return $nome }
    }
    return $pastaOutros
}

# Se já existir um arquivo com o mesmo nome no destino, acrescenta " (2)", " (3)"...
function Get-CaminhoLivre([string]$pastaDestino, [string]$nomeArquivo, $reservados) {
    $base = [IO.Path]::GetFileNameWithoutExtension($nomeArquivo)
    $ext  = [IO.Path]::GetExtension($nomeArquivo)
    $caminho = Join-Path $pastaDestino $nomeArquivo
    $n = 2
    while ((Test-Path -LiteralPath $caminho) -or $reservados.Contains($caminho)) {
        $caminho = Join-Path $pastaDestino ("{0} ({1}){2}" -f $base, $n, $ext)
        $n++
    }
    [void]$reservados.Add($caminho)
    return $caminho
}

# ---------- Desfazer ----------
if ($Desfazer) {
    if (-not (Test-Path -LiteralPath $Desfazer)) { throw "Registro não encontrado: $Desfazer" }
    $linhas = @(Import-Csv -LiteralPath $Desfazer -Encoding UTF8)
    [array]::Reverse($linhas)
    $voltaram = 0
    foreach ($l in $linhas) {
        if (-not (Test-Path -LiteralPath $l.Destino)) {
            Write-Warning "Não está mais lá, pulando: $($l.Destino)"
            continue
        }
        if (Test-Path -LiteralPath $l.Origem) {
            Write-Warning "Já existe um arquivo no lugar original, pulando: $($l.Origem)"
            continue
        }
        Move-Item -LiteralPath $l.Destino -Destination $l.Origem
        $voltaram++
    }
    Write-Host "$voltaram arquivo(s) voltaram para o lugar original." -ForegroundColor Green
    Write-Host "As subpastas vazias que sobraram podem ser apagadas à mão."
    return
}

# ---------- Organizar ----------
if (-not $Pasta) {
    try {
        $Pasta = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
    } catch {
        $Pasta = Join-Path $env:USERPROFILE 'Downloads'
    }
}
if (-not (Test-Path -LiteralPath $Pasta -PathType Container)) { throw "Pasta não encontrada: $Pasta" }
$Pasta = (Resolve-Path -LiteralPath $Pasta).Path

# Só os arquivos soltos na raiz da pasta; subpastas que já existem ficam como estão.
$arquivos = @(Get-ChildItem -LiteralPath $Pasta -File -Force | Where-Object {
    ($ignorarExtensoes -notcontains $_.Extension.ToLower()) -and
    ($ignorarNomes -notcontains $_.Name.ToLower()) -and
    ($_.Name -notlike '_organizacao-*.csv')
})

if ($arquivos.Count -eq 0) {
    Write-Host "Nenhum arquivo solto para organizar em $Pasta." -ForegroundColor Yellow
    return
}

# Duplicados: mesmo tamanho e mesmo conteúdo. Fica o mais antigo (no empate, o de nome mais curto); as cópias vão para _Revisar\Duplicados.
$duplicados = @{}
$arquivos | Group-Object Length | Where-Object { $_.Count -gt 1 } | ForEach-Object {
    $_.Group | Group-Object { (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash } |
        Where-Object { $_.Count -gt 1 } | ForEach-Object {
            $_.Group | Sort-Object LastWriteTime, { $_.Name.Length }, Name | Select-Object -Skip 1 | ForEach-Object {
                $duplicados[$_.FullName] = $true
            }
        }
}

$reservados = New-Object 'System.Collections.Generic.HashSet[string]' ([StringComparer]::OrdinalIgnoreCase)
$plano = foreach ($a in ($arquivos | Sort-Object Name)) {
    if ($duplicados.ContainsKey($a.FullName)) {
        $sub = $pastaDuplicados
    } else {
        $sub = Get-PastaDestino $a.Extension.ToLower()
    }
    $destDir = Join-Path $Pasta $sub
    [pscustomobject]@{
        Arquivo = $a.Name
        Para    = $sub
        Origem  = $a.FullName
        Destino = Get-CaminhoLivre $destDir $a.Name $reservados
    }
}

Write-Host ""
Write-Host "Pasta: $Pasta" -ForegroundColor Cyan
Write-Host ("{0} arquivo(s) soltos, {1} duplicado(s)." -f $arquivos.Count, $duplicados.Count)
Write-Host ""
$plano | Group-Object Para | Sort-Object Name |
    Select-Object @{n='Subpasta';e={$_.Name}}, @{n='Arquivos';e={$_.Count}} |
    Format-Table -AutoSize | Out-String -Width 200 | Write-Host

if (-not $Executar) {
    $plano | Select-Object Arquivo, Para | Format-Table -AutoSize -Wrap | Out-String -Width 200 | Write-Host
    Write-Host "SIMULAÇÃO: nada foi movido." -ForegroundColor Yellow
    Write-Host "Se estiver tudo certo, rode de novo com -Executar."
    return
}

$registro = Join-Path $Pasta ("_organizacao-{0}.csv" -f (Get-Date -Format 'yyyyMMdd-HHmmss'))
$feitos = New-Object System.Collections.Generic.List[object]
try {
    foreach ($p in $plano) {
        $destDir = Split-Path -Parent $p.Destino
        if (-not (Test-Path -LiteralPath $destDir)) { New-Item -ItemType Directory -Path $destDir | Out-Null }
        try {
            Move-Item -LiteralPath $p.Origem -Destination $p.Destino
            $feitos.Add(($p | Select-Object Origem, Destino))
        } catch {
            Write-Warning "Não deu para mover $($p.Arquivo) (talvez esteja aberto): $($_.Exception.Message)"
        }
    }
} finally {
    # O registro é gravado mesmo se algo der errado no meio, para sempre ser possível desfazer.
    if ($feitos.Count -gt 0) { $feitos | Export-Csv -LiteralPath $registro -NoTypeInformation -Encoding UTF8 }
}

Write-Host ("{0} de {1} arquivo(s) movidos." -f $feitos.Count, $plano.Count) -ForegroundColor Green
if ($feitos.Count -gt 0) {
    Write-Host "Registro para desfazer: $registro"
    Write-Host "Para desfazer: .\organizar-downloads.ps1 -Desfazer `"$registro`""
}
