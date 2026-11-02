# Textos das 4 páginas de categoria: como usar

Escrito em 02/11/2026 para o site https://www.imoveisemcamposdojordao.com (Kenlo Sites), seguindo as ações B1 a B4 e o Anexo C do `PLANO-DE-ACAO-SEO-29-10.md`.

## 1. O que tem nesta pasta

| Arquivo | Página | Ação do plano | Quando publicar |
|---|---|---|---|
| `casa.md` | /imoveis/a-venda/casa | B1 (prioridade máxima) | o quanto antes; precisa estar indexada antes do pico de abril a julho |
| `aluguel.md` | /imoveis/para-alugar | B3 | até dezembro, antes do pico de janeiro |
| `terreno.md` | /imoveis/a-venda/terreno | B2 | até março/abril (pico em julho) |
| `apartamento.md` | /imoveis/a-venda/apartamento | B4 | até março/abril (pico de abril a julho) |

Cada arquivo tem as mesmas seções:

1. **Title** (até 60 caracteres, palavra principal no começo)
2. **Meta description** (140 a 155 caracteres, com chamada)
3. **H1**
4. **Texto introdutório** (60 a 90 palavras), para o topo, acima da lista de imóveis
5. **Texto completo** (600 a 900 palavras), para baixo da lista, com H2/H3 e as perguntas frequentes
6. **Links internos sugeridos**
7. **Schema FAQPage** em JSON-LD, pronto
8. **Conferir no dia de publicar** (o que depende do Roberto ou do estoque do dia)
9. **Fontes**: **não colar no site**; é o registro de onde saiu cada fato
10. **Versão em HTML** das seções 4 e 5, pronta para o editor de código

Nas seções 4 e 5, `###` vira **H2** e `####` vira **H3** no site.

## 2. Onde colar cada parte no Kenlo Sites

Antes de tudo: o plano (A1, item 5) registra que **título, descrição, H1 e texto das páginas de listagem talvez não sejam editáveis** no Kenlo (a confirmar). Hoje o título é gerado sozinho ("302 Casas à venda - Imóveis em Campos do Jordão") e o H1 também ("Exibindo 302 Casas à venda").

**Passo 1. Conferir se a listagem tem campos próprios.** No Kenlo Sites (e no painel Kenlo), abrir as configurações da página de busca/listagem de cada categoria e procurar campos de SEO (título, descrição) e um bloco de texto.

**Passo 2a. Se os campos existirem:**

| Parte do arquivo | Onde vai |
|---|---|
| 1. Title | campo de título SEO da página (title) |
| 2. Meta description | campo de descrição SEO (meta description) |
| 3. H1 | campo do título principal da página, no lugar de "Exibindo N ..." |
| 4. Texto introdutório | bloco de texto **acima** da lista de imóveis |
| 5. Texto completo | bloco de texto **abaixo** da lista (ou rodapé da página) |
| 7. Schema FAQPage | campo de scripts/código da página (cabeçalho ou corpo). Se não existir, pule: o texto funciona sem ele |
| 10. HTML | use no lugar das seções 4 e 5 se o bloco de texto tiver modo "código-fonte"; os títulos e links já vão formatados |

Se o editor for visual (sem código), cole o texto das seções 4 e 5 e aplique "Título 2" nas linhas que começam com `###` e "Título 3" nas que começam com `####` (apagando os `#`). Os links estão entre colchetes, com a URL entre parênteses: crie cada link no editor.

**Passo 2b. Se os campos não existirem:**
- **Pedir à Kenlo** (é o item 5 do pedido único do Anexo A). Pela regra #36, só o Roberto autoriza chamado à Kenlo.
- **Plano B do plano (B1):** criar uma página fixa no Kenlo Sites, no modelo da página de alto padrão, com o mesmo texto e um link forte para a listagem. Atenção: duas páginas com o mesmo foco podem disputar entre si. Por isso é plano B, não plano A.

**Tamanho:** as fichas do Kenlo comportam cerca de 800 palavras. Se o bloco da categoria tiver limite parecido, corte primeiro a lista "O que observar..." de cada página, que é a parte menos ligada às buscas.

**Publicar:** o botão "Publicar" do Kenlo Sites está barrado para o Claude (tarefa #42). O Roberto publica ou libera.

## 3. Medir no Semrush SEO Writing Assistant antes de publicar

Regra do projeto (HANDOFF-05-10, seção 2): **só publicar com nota ≥ 9,0 na SWA; meta 9,7 com tudo verde.**

1. Abrir um documento novo na SWA (`https://www.semrush.com/swa/checker`), público Brasil / Português.
2. Palavras-chave: usar a lista "Palavras para a SWA" do topo de cada arquivo.
3. Colar o **texto simples** que vai para a página: introdução (seção 4) + texto completo (seção 5), sem title, meta, schema nem a seção de fontes. É esse texto que a nota tem de medir.
4. Ajustar pelo painel (densidade das palavras, legibilidade, frases difíceis). **Toda troca feita na Semrush tem de ir também para o arquivo `.md`** (seções 4 e 5, schema se mudar uma resposta das perguntas frequentes, e a versão HTML da seção 10). Regra do hash: o texto publicado tem de ser idêntico ao medido.
5. Anotar a nota e o link do documento da SWA no topo do arquivo antes de publicar.

Os textos ainda **não foram medidos** na SWA (a sessão que escreveu não tem acesso ao navegador). Contagem feita aqui: casa 77 + 889 palavras; terreno 71 + 892; aluguel 73 + 659; apartamento 71 + 740. Se a SWA pedir mais palavras, há espaço em aluguel e apartamento; em casa e terreno, o teto de 900 está perto.

## 4. Depois de publicar

1. Search Console: inspecionar a URL e pedir indexação (fila "indexacao-diaria-com", cota de cerca de 11 pedidos por dia).
2. Medir como o plano manda (A2 e B1–B4): CTR e posição de cada URL no GSC, 4 semanas antes contra 4 semanas depois. Metas do plano: casas de 9,7 para menos de 5 até março; terrenos no top 5; aluguel do 10–12 para o top 5 em janeiro; apartamentos no top 10 e depois top 5.

## 5. O que foi deixado de fora de propósito

- **Preços, faixas de preço, número de imóveis em estoque e estatísticas de mercado.** Nenhum número sem fonte. Onde o plano sugere a faixa do dia ou o número de opções (título com "[N] opções"), está indicado como opcional na seção 1 ou 8 de cada arquivo, para preencher com o dado real do dia.
- **Promessa de valorização ou de renda de aluguel.**
- **Zona de qualquer bairro ou terreno.** O texto de terrenos só diz a regra geral (até 3 construções onde a zona permite; até 2 pavimentos; exceções em ZR2 e ZR3 para terrenos grandes), que o município todo é APA e "confirme a zona na Prefeitura". Sem recuos, taxa de ocupação ou coeficiente em números (Tabela 08 não confirmada) e sem "3 chalés para Airbnb".
- **Aluguel por temporada.** Depende da resposta do Roberto (plano, seção 3, pergunta 6). Há um bloco opcional em `aluguel.md`, seção 8.
- **Bairros principais sem seção no guia** (Alto do Capivari, Descansópolis, Alto da Boa Vista, Jardim Véu da Noiva, Morro do Elefante, Iporanga): aparecem só com link, sem descrição, porque o `GUIA-BAIRROS.md` não tem dados confirmados sobre eles.
- **Perguntas do Google sem resposta com fonte** ("qual famoso tem casa", "qual o bairro mais rico", "qual a casa mais cara"): não entraram.

## 6. Fatos sobre a cidade usados e como foram conferidos

Conferidos por busca na web em 02/11/2026 (o WebFetch não foi usado; as fontes estão na seção 9 de cada arquivo):

| Fato | Como está no texto | Observação |
|---|---|---|
| Altitude | "a sede do município está a cerca de 1.628 m de altitude, apontada como a mais alta entre as sedes municipais do Brasil" | Fontes atribuem o dado à Prefeitura e ao Governo do Estado. **A central tem o conflito #18 (altitude) em aberto:** o Roberto confirma ou a frase sai. |
| Distância de São Paulo | "entre 170 e 180 km pela estrada, conforme o trajeto" | As fontes variam (170, 173 e 180 km). Por isso o texto dá a faixa, não "180 km". |
| Acesso | Rodovia Floriano Rodrigues Pinheiro (SP-123), que liga Taubaté à cidade | Wikipedia |
| População | 46.974 moradores (IBGE, Censo 2022) | Página do IBGE Cidades |
| Festival de Inverno | 56ª edição em 2026, de 4 de julho a 2 de agosto | Imprensa (Band Vale, Gazeta SP) |
| APA | Todo o município é Área de Proteção Ambiental (Lei Estadual 4.105/1984) | Texto da lei no site da Alesp |
| Lei do Inquilinato | garantias do art. 37 (uma por contrato) e IPTU do art. 22, VIII | Fontes jurídicas secundárias; texto oficial no Planalto para conferir |
| Registro do imóvel | a propriedade passa com o registro (Código Civil, art. 1.245) | Fontes jurídicas secundárias |
| Arquitetura | inspiração europeia e enxaimel, sobretudo na Vila Capivari | Só fontes de turismo e imprensa |

## 7. Pendências para o Roberto (resumo)

1. Altitude (conflito #18): manter a frase da altitude ou tirar?
2. Temporada: a imobiliária faz aluguel por temporada? (decide o bloco opcional de `aluguel.md`)
3. Aluguel: a garantia é combinada caso a caso com o proprietário, como o texto diz, ou há uma garantia padrão?
4. Grafia "Vila Britânia" (texto) × "Vila Britania" (nome da página no site): seguir a regra #62.
5. Exceções de 3 pavimentos (ZR2/ZR3): manter como está ou usar a frase mais genérica sugerida em `terreno.md`, seção 8?
6. Os campos de título, descrição, H1 e texto das listagens existem no Kenlo? Se não, autoriza o pedido à Kenlo (Anexo A) ou prefere o plano B (página fixa)?

Nada foi publicado e nada foi enviado ao git.
