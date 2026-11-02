# Como acompanhar a corrida pelo 1º lugar

Linha de base: `LINHA-DE-BASE-02-11.md` e `.csv`, de 02/11/2026. Ela cobre 40 palavras-alvo, cada uma com a página que deve ranquear. Este arquivo diz o que olhar, onde olhar e o que falta configurar. Complementa a seção 4 do `PLANO-DE-ACAO-SEO-29-10.md`.

## 1. Toda segunda-feira (15 a 20 minutos)

| # | O que olhar | Onde | Comparar com (linha de base) |
|---|---|---|---|
| 1 | Posição das 40 palavras-alvo, **só orgânica** (sem AI Overview e sem mapa) | **Semrush** > Position Tracking > projeto 31372806 (www.imoveisemcamposdojordao.com) > aba Rankings, filtrando pela etiqueta `alvo40` (criar, ver seção 3). Pela API, o Claude roda `tracking_position_organic` com `linktype_filter=537395202` | Coluna "Semrush só orgânico · mediana 7d" da linha de base. No orgânico puro de 02/11: 6 palavras em 1º, 17 no top 3, 70 no top 10 (de 131) |
| 2 | Quantas palavras estão citadas no AI Overview e no mapa | Mesmo relatório, sem o filtro (padrão do painel) | 02/11: 34 em "1º" com IA/mapa. É bônus e oscila muito, não é a meta |
| 3 | **A URL que aparece é a página-alvo?** | Semrush, coluna "URL" de cada palavra. GSC > Desempenho > Consultas > clicar na consulta > Páginas | Hoje há páginas trocadas: apartamento (vila-capivari no lugar de /a-venda/apartamento), aluguel (home ou /para-alugar/apartamento no lugar de /para-alugar/casa), Véu da Noiva (residencial-… e jardim-…), marca (home em **http**) |
| 4 | Posição média, impressões e cliques das 40 consultas, últimos 7 dias contra os 7 anteriores, país Brasil | **Google Search Console** > Desempenho > Consultas > filtro "Consulta" com regex (ver abaixo) | Coluna "GSC pos. média 90d". O GSC é a fonte oficial |
| 5 | Os quatro clusters em uma linha cada (casas, terrenos, apartamentos, aluguel) | GSC > Desempenho > Páginas: `/imoveis/a-venda/casa`, `/terreno`, `/apartamento`, `/imoveis/para-alugar` (e `/casa`) | Plano, seção 4: casas pos. 9,7, terrenos 8,7, apartamentos 10,2, aluguel 12,2 (90 dias) |
| 6 | Home em http ainda aparece? | GSC > Desempenho > Páginas > `http://www.imoveisemcamposdojordao.com/` | 3.239 impressões em 90 dias. A Semrush ainda via a home em http em "imobiliária campos do jordão" e "imoveis a venda em…" em 02/11. Meta: zero |

**Regex para o GSC** (Consulta > Personalizado (regex)). Cobre as 40 palavras e as variantes de acento:
```
(casas? (a venda |à venda |em |para alugar |baratas)?.*campos do jord|terrenos? .*campos do jord|apartamentos? .*campos do jord|aluguel (em )?campos do jord|imobili[aá]rias? (em )?campos do jord|im[oó]veis (a venda )?(em )?campos do jord|pousada|mans[oõ]es|condom[ií]nio|iporanga|v[eé]u da noiva|abern[eé]ssia|santo ant[oô]nio do pinhal|s[aã]o bento do sapuca)
```

### Como registrar
- Toda segunda, salvar uma cópia do CSV com o mesmo formato: `LINHA-DE-BASE-02-11.csv` → `SEMANA-DD-MM.csv`. Preencher pelo menos as colunas da Semrush (só orgânico, mediana 7d) e do GSC (7 dias).
- A meta de cada palavra é a coluna "distância ao 1º" chegar a **0**. As metas intermediárias são as das ações do plano. Exemplos: aluguel sair da posição 10–12 para o top 5 até janeiro (B3) e apartamentos entrar no top 10 e depois no top 5 (B4).

## 2. Todo mês
Igual à seção 4 do plano: indexação, Core Web Vitals, links e crawl técnico. Mais duas coisas:
- **Concorrentes do Position Tracking** (Semrush > Position Tracking > Competitors Discovery), para ver quem sobe nas 131 palavras. Não foi exportado em 02/11 porque as unidades acabaram.
- **SERP das 10 palavras de maior volume**, para ver quem está em 1º hoje: Semrush > Keyword Overview > SERP Analysis, base br. A Ahrefs não respondeu em 02/11.

## 3. O que adicionar no Position Tracking da Semrush (o Roberto ou o Claude no computador)

A campanha atual (`31372806_5543512`) tem 131 palavras, mede no **computador**, a partir da **cidade de Campos do Jordão**, com as etiquetas `fixo30` e `lacuna`. Das 40 palavras-alvo, **11 não estão nela**. Para adicionar: Position Tracking > projeto 31372806 > Settings > Keywords > Add keywords, colando a lista e marcando a etiqueta `alvo40`.

**Palavras a adicionar (11):**
```
terreno a venda em campos do jordão
terrenos em campos do jordão
apartamentos a venda em campos do jordão
apartamento para alugar em campos do jordão
mansões em campos do jordão
condomínio campos do jordão
condominio iporanga campos do jordão
abernessia imoveis
terreno santo antonio do pinhal
casa para alugar em santo antônio do pinhal
casa para alugar em são bento do sapucaí
```

**Etiquetar como `alvo40` as 29 que já estão no tracking:**
```
casa a venda em campos do jordão
casas a venda em campos do jordão
casa a venda campos do jordao
casas a venda campos do jordão
casa em campos do jordão
casas em campos do jordão
casa em campos do jordao
casa campos do jordao
casas campos do jordão
casas baratas à venda em campos do jordão
terreno campos do jordão
terreno em campos do jordão
apartamento campos do jordão
apartamento em campos do jordão
apartamento a venda em campos do jordão
aluguel campos do jordão
aluguel em campos do jordão
casa para alugar em campos do jordão
casa para alugar campos do jordão
casas para alugar em campos do jordão
casas para alugar mensal em campos do jordão
imobiliária campos do jordão
imobiliarias em campos do jordão
imoveis campos do jordão
imóveis em campos do jordão
imoveis em campos do jordao
imoveis a venda em campos do jordão
pousada a venda em campos do jordão
condominio veu da noiva campos do jordao
```

**Ajustes de configuração recomendados:**
1. **Criar uma segunda campanha no celular.** O plano pede celular e computador, e hoje só existe a de computador. Se o plano Guru permitir outra localização, usar **São Paulo (capital)**, de onde vem boa parte de quem compra. A localização "cidade de Campos do Jordão" mostra o site melhor do que o GSC mostra para o Brasil todo. Exemplo: "casas para alugar em campos do jordão" está em 2 na Semrush e em 24,1 no GSC.
2. **Na campanha do .net** (projeto 31393522, 5 palavras, Brasil), incluir as 6 palavras de marca e genéricas (26 a 31 da lista). Assim dá para ver na mesma semana qual dos dois domínios o Google escolhe em "imoveis em campos do jordao".

## 4. Antes da próxima coleta: ferramentas que falharam em 02/11
- **Semrush API:** o saldo de unidades está **zerado** (erro "API UNITS BALANCE IS ZERO"). O painel web continua funcionando, porque usa o limite do plano, não as unidades da API. Para o Claude voltar a exportar pela API, é preciso comprar unidades ou esperar a renovação, em Semrush > Subscription info > API units. Para economizar, exportar só os últimos 7 dias. O histórico de 38 dias custou até 8.100 unidades por página de 50 palavras.
- **Ahrefs API:** todas as ferramentas devolveram **"Insufficient plan"** (Site Audit, GSC, SERP e até a consulta de assinatura). Por isso não saiu o crawl novo nem a comparação com o crawl de 26/10. Vale conferir no painel da Ahrefs se o plano atual inclui a API. Alternativas sem custo: o Site Audit do **Ahrefs Webmaster Tools** (site verificado) ou o Site Audit da Semrush. Para o GSC, usar o próprio Search Console.
