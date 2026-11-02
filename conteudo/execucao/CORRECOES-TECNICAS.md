# Correções técnicas — imoveisemcamposdojordao.com

Preparado em 02/11/2026 para o Roberto e para o Claude no computador do Roberto.
**Fonte única:** crawl do Site Audit da Ahrefs de 26/10/2026 (projeto 10408012, 2.241 URLs) e GSC de 90 dias, exportados em `ahrefs-export/extras/` (`site-audit-page-explorer-10408012.json`, `gsc-pages-90d.csv` e `tecnico/*.csv`). Nada aqui foi medido de novo: o site e o estoque podem ter mudado depois de 26/10. A rede desta sessão não acessa o site, por isso nada foi conferido ao vivo.

O que é dado e o que é proposta:
- Contagens, URLs, títulos, H1 e impressões = dado dos CSVs.
- "Origem provável", "nome certo", textos de meta description e de alt = proposta ou inferência, sempre marcada.

Arquivos (todos nesta pasta, UTF-8, separados por vírgula):

| Item | Arquivo | Linhas |
|---|---|---|
| a | `a-redirecionamentos-por-bairro.csv` (resumo por bairro) | 30 |
| a | `a-redirecionamentos-urls.csv` (as 52 URLs que redirecionam) | 52 |
| b | `b-4xx-com-origem.csv` (as 142 URLs 4xx) | 142 |
| b | `b-paginas-que-linkam-para-4xx.csv` (as 60 páginas com link quebrado) | 60 |
| c | `c-descricoes-duplicadas-agrupadas.csv` (565 URLs em 268 grupos) | 565 |
| c | `c-meta-descriptions-propostas.csv` (20 propostas) | 20 |
| d | `d-listagens-com-1-imovel.csv` | 562 |
| e | `e-categorias-duplicadas.csv` | 27 |
| f | `f-imagens-sem-alt.csv` | 11 |

Quem faz o quê:
- **Painel Kenlo (cadastro):** Claude no computador do Roberto (itens a, f).
- **Kenlo Sites (páginas):** Claude grava; o Roberto clica em "Publicar" (item c, páginas institucionais).
- **Kenlo suporte (modelo do site):** itens b, d, e e parte do c — já estão no `PEDIDO-KENLO.md`.

---

## (a) Redirecionamentos: bairros com nome antigo → nome certo

**O que é:** 52 URLs internas redirecionam (301/302) e recebem juntas **2.249 links internos**. 46 delas (2.247 links) são bairros ou condomínios renomeados no Kenlo: alguns imóveis ou condomínios ainda estão cadastrados com o bairro antigo, e os blocos de links do site continuam gerando o endereço antigo. As outras 6 são 4 variações de domínio (`http://`, sem `www`, sem links internos — estão certas), a ficha TE0175 com URL antiga (1 link) e um link malformado do sitemap HTML (1 link, vai no pedido à Kenlo).

**Limite dos dados:** a exportação traz **quantos** links cada URL antiga recebe, mas **não quais páginas** contêm esses links. Para achar as páginas de origem, ver "Como achar as páginas de origem" no fim desta seção.

### Resumo por bairro (ordem: mais links primeiro)

"Nome certo" = nome que aparece hoje no H1 da página de destino (dado do crawl). Antes de trocar no painel, conferir com as grafias da regra #62.

| Slug antigo (como está no cadastro) | Slug certo | Nome certo no site | Links internos | URLs antigas (links) |
|---|---|---|---|---|
| `pedra-do-fogo` | `condominio-morro-pedra-do-fogo` | Condomínio Morro Pedra do Fogo | **850** | casa (403), bairro (236), terreno (211) |
| `altos-do-capivari` | `alto-do-capivari` | Alto do Capivari | **628** | casa (404), bairro (224) |
| `vila-abernessia` | `abernessia` | Abernéssia | **569** | casa (404), bairro (164), aluguel casa (1) |
| `parque-ferradura` | `parque-da-ferradura` | Parque da Ferradura | 9 | bairro (8), terreno (1) — destino em **noindex** |
| `j-nova-suica` | `vila-nova-suica` | Vila Nova Suíça | 9 | bairro (8), terreno (1) |
| `chantal-i` | `vila-chantal` | Vila Chantal | 9 | bairro (8), terreno (1) |
| `vila-matilde` | `vila-mathilde` | Vila Mathilde | 9 | bairro (8), aluguel casa (1) |
| `jardim-atalaia` | `atalaia` | Atalaia | 9 | bairro (8), terreno (1) |
| `lot-atalaia` | `atalaia` | Atalaia | 9 | bairro (8), terreno (1) |
| `alataia` | `atalaia` | Atalaia | 8 | bairro (7), terreno (1) |
| `sao-francisco` | `vila-sao-francisco` | Vila São Francisco | 8 | bairro (8) |
| `loteamento-jardim-elizabeth` | `jardim-elizabeth` | Jardim Elizabeth | 8 | bairro (7), terreno (1) |
| `jardim-elisabeth` | `jardim-elizabeth` | Jardim Elizabeth | 8 | bairro (8) |
| `p-principes` | `parque-dos-principes` | Parque dos Príncipes | 8 | bairro (8) |
| `recanto-araucaria` | `recanto-das-araucarias` | Recanto das Araucárias | 8 | bairro (7), terreno (1) |
| `alto-boa-vista` | `alto-da-boa-vista` | Alto da Boa Vista | 8 | bairro (7), terreno (1) |
| `alpes-campos-do-jordao` | `alpes-de-campos-do-jordao` | Alpes de Campos do Jordão | 8 | bairro (7), terreno (1) |
| `vila-jaguaribe` | `jaguaribe` | Jaguaribe | 8 | bairro (8) |
| `parque-agua-santa` | `agua-santa` | Água Santa | 8 | bairro (8) — redireciona com **302** (temporário) |
| `morro-da-pedra-do-fogo` | `condominio-morro-pedra-do-fogo` | Condomínio Morro Pedra do Fogo | 8 | bairro (8) |
| `jardim-cataguazes` | `jardim-cataguases` | Jardim Cataguases | 7 | bairro (7) — destino em **noindex** |
| `fracalanza` | `vila-fracalanza` | Vila Fracalanza | 7 | bairro (7) |
| `jardim-bevedere` | `jardim-belvedere` | Jardim Belvedere | 7 | bairro (7) |
| `branca-nuvens` | `brancas-nuvens` | Brancas Nuvens | 7 | bairro (7) |
| `j-andira` | `jardim-andira` | Jardim Andira | 7 | bairro (7) |
| `imbiri` | `imbiry` | Imbiry | 7 | bairro (7) — destino em **noindex**; grafia "Imbiry" depende do Roberto (handoff) |
| `vila-iara` | `vila-yara` | Vila Yara | 7 | bairro (7) — conferir com a regra #62 (o guia de bairros usa "Vila Iara") |
| `v-britania` | `vila-britania` | Vila Britania (sem acento no site) | 7 | bairro (7) — conferir grafia "Vila Britânia" na regra #62 |
| `vila-austriaca` | `aldeia-austriaca` | Aldeia Austríaca | 1 | bairro (1) |
| `vila-suica` | `vila-nova-suica` | Vila Nova Suíça | 1 | bairro (1) — ainda teve 50 impressões no GSC |

"bairro" = `/imoveis/campos-do-jordao/<slug>`; "casa" = `/imoveis/a-venda/casa/campos-do-jordao/<slug>`; "terreno" = `/imoveis/a-venda/terreno/campos-do-jordao/<slug>`; "aluguel casa" = `/imoveis/para-alugar/casa/campos-do-jordao/<slug>`. Lista completa com URL de destino e status em `a-redirecionamentos-urls.csv`.

### O que fazer (painel Kenlo — Claude no computador)
1. Começar pelos 3 primeiros (2.047 dos 2.249 links): no painel, filtrar imóveis **e condomínios** pelo bairro "Pedra do Fogo", "Altos do Capivari" e "Vila Abernéssia" e trocar para o bairro atual. Aplicar a trava 2 (características não podem zerar) e a regra #331 (trocar também no JSON local e nas menções em outras fichas).
2. "Vila Abernéssia" citada como vizinha em 110 fichas e o título da PO0009 dependem do Roberto (handoff, seção 7) — não mexer sem ok.
3. Depois os outros 27, que recebem de 1 a 9 links cada.
4. Se, depois de corrigir o cadastro, os blocos "Bairros mais populares" / "Descubra outras possibilidades" continuarem com o slug antigo, é com a Kenlo (`PEDIDO-KENLO.md`, item 8).
5. Os 3 que levam a páginas em `noindex` (parque-ferradura, jardim-cataguazes, imbiri) dependem da decisão do Roberto sobre os 9 bairros em noindex (plano B8).
6. Duplicatas citadas no plano (A6, item 5) — situação no crawl de 26/10:
   - `alto-da-vila-inglesa` (bairro, 14 imóveis, 200) e `altos-da-vila-inglesa` (H1 "Exibindo 6 Imóveis encontrados", sem nome; e existe um condomínio "Altos da Vila Inglesa"). Pode ser o nome do condomínio usado como bairro. `alto-do-vila-inglesa` não aparece no crawl.
   - `alto-boa-vista` → já redireciona para `alto-da-boa-vista`.
   - `j-andira` → já redireciona para `jardim-andira`.

### Como achar as páginas de origem (o CSV não traz)
- Semrush Site Audit (plano Guru do Roberto): rodar o crawl e abrir o problema "Links internos para redirecionamento" / "Páginas com links quebrados"; cada linha mostra a página de origem.
- Ou o Site Audit grátis do Ahrefs Webmaster Tools: relatório "Internal pages" > "Inlinks" da URL antiga.
- Atenção à regra do WAF: nada de rastreador próprio em rajada no site (handoff, armadilha 2).

---

## (b) As 142 URLs 4xx e as páginas de origem

**O que é:** 141 URLs com 404 e 1 com 410 recebem **239 links internos**, vindos de **60 páginas**.

| Grupo | URLs | Links recebidos | Exemplo |
|---|---|---|---|
| Filtro tipo × bairro sem estoque (`/imoveis/<tipo>/campos-do-jordao/<bairro>`) | 103 | 103 | `/imoveis/sitio/campos-do-jordao/edificio-mantiqueira` |
| Tipo sem estoque no menu/filtro (studio, sala) | 5 | 46 | `/imoveis/a-venda/studio/campos-do-jordao` (14) |
| Listagens "novos" sem estoque (`/imoveis/novos/...`) | 25 | 45 | `/imoveis/novos/campos-do-jordao/vila-capivari` (9) |
| Bairro/condomínio sem página | 8 | 44 | `villa-americana`, `bairro-do-centro`, `cdhu` (12 cada) |
| Ficha removida (410) | 1 | 1 | `/imovel/casa-campos-do-jordao-3-quartos-160-m/CA0514-JRLM` |

As 60 páginas de origem estão em `b-paginas-que-linkam-para-4xx.csv`. As que mais têm links quebrados:

| Página de origem | Links quebrados | Em noindex? |
|---|---|---|
| `/imoveis/campos-do-jordao/residencial-floresta-negra` | 24 | não |
| `/imoveis/campos-do-jordao/edificio-mantiqueira` | 24 | sim |
| `/imoveis/campos-do-jordao/luz-do-sol` | 24 | sim |
| `/imoveis/campos-do-jordao/imbiry` | 24 | sim |
| `/imoveis/campos-do-jordao/jardim-cataguases` | 22 | sim |
| `/imoveis/campos-do-jordao/parque-da-ferradura` | 21 | sim |
| `/imoveis/campos-do-jordao/quebradas` | 7 | não |
| `serra-azul`, `jardim-do-pai`, `le-verbier-village-residence`, `vila-nova`, `/imoveis/a-venda/campos-do-jordao/atalaia` | 6 cada | jardim-do-pai, le-verbier e vila-nova em noindex |
| `/avalie-seu-corretor`, `/imoveis/a-venda` | 5 cada | não |
| `/imoveis/a-venda/terreno/campos-do-jordao`, `/imoveis/para-alugar/casa/campos-do-jordao` | 4 cada | não |
| `/condominio/parque-trenton-...` | 2 | não |
| 43 fichas de condomínio (`/condominio/...`) | 1 cada | não |

**Origem de cada URL 4xx:** a exportação não traz o par "página → link". Em `b-4xx-com-origem.csv`, a coluna `pagina_de_origem_provavel` foi preenchida só quando as contagens fecham (inferência, não dado):
- **103 filtros tipo × bairro:** cada um tem o mesmo slug de uma das 6 páginas de bairro do topo da tabela (18+18+18+18+16+15 = 103). Essas páginas linkam para filtros de tipo sem imóvel.
- **Studio/sala e `villa-americana`, `bairro-do-centro`, `cdhu`:** as 12 páginas com 6 ou mais links quebrados explicam 12 links de cada; `/avalie-seu-corretor` e `/imoveis/a-venda` (5 cada) fecham os 14 de studio/sala e os 2 de `/imoveis/a-venda/sala` e `/imoveis/para-alugar/sala`.
- **31 URLs** (os "novos", a 410 e alguns bairros) ficaram como "não identificável no CSV". Pela soma, a origem mais provável são as 44 fichas de condomínio com 1 link cada, mas não dá para dizer qual ficha linka para qual URL. Confirmar no crawl da Semrush.

**O que fazer:** quase tudo é do modelo do site (menu, filtros e blocos gerados pelo Kenlo): ver `PEDIDO-KENLO.md`, itens 3 e 4. No cadastro, só:
- Conferir no painel se `villa-americana`, `bairro-do-centro` e `cdhu` existem como bairro de algum imóvel ativo (plano A6, item 4). Se for bairro sem imóvel ou nome errado, unificar.
- CA0514 (410): a ficha saiu do ar e ainda recebe 1 link. Ela está nas perguntas pendentes do Roberto (bairro do endereço x bairro do site). Nada a fazer até ele responder.

---

## (c) Meta descriptions duplicadas

**O que é:** 565 URLs indexáveis em **268 grupos** com a mesma meta description (o plano fala em 267; a diferença é um grupo de 3 páginas `/sitemap` que têm duas descrições). Distribuição: 251 grupos de 2 páginas, 11 de 3, 5 de 4 e 1 de 10.
- **265 grupos** são a descrição automática das listagens ("1 imóvel em X, na faixa de R$ A a R$ A...") — consequência das listagens com 1 imóvel (item d). Resolve com o `noindex,follow` do pedido à Kenlo; não vale escrever à mão.
- **1 grupo de 10** é a descrição da home, repetida em 9 páginas institucionais (no crawl são 16 com as 3 noindex e as 3 `/sitemap`).
- 41 das 565 URLs tiveram alguma impressão no GSC em 90 dias (coluna `impressoes_gsc_90d` do CSV).

### Propostas para as 20 páginas mais importantes (140–155 caracteres)
Arquivo: `c-meta-descriptions-propostas.csv` (com a descrição atual ao lado). Só usam fatos do kit da empresa (desde 2011, CRECI, endereço, telefone) e do crawl (tipos de imóvel e bairros com estoque em 26/10). Sem números de estoque, que mudam toda semana.

| # | Página | Mesma descrição hoje em | Impressões GSC 90d | Proposta (caracteres) |
|---|---|---|---|---|
| 1 | `/` | 16 | 7.392 (http + https) | Imobiliária em Campos do Jordão desde 2011, CRECI 23458-J. Casas, apartamentos, terrenos e chácaras à venda e para alugar, com fotos, preços e WhatsApp. (152) |
| 2 | `/quem-somos` | 16 | 0 | Conheça a Imóveis em Campos do Jordão: imobiliária desde 2011, CRECI 23458-J, com loja na Av. Frei Orestes Girardi, 1423, na Vila Abernéssia. (141) |
| 3 | `/fale-conosco` | 16 | 0 | Fale com a Imóveis em Campos do Jordão: telefone (12) 3662-6039, WhatsApp ou visite a loja na Av. Frei Orestes Girardi, 1423, Vila Abernéssia. (142) |
| 4 | `/cadastre-seu-imovel` | 16 | 0 | Quer vender ou alugar seu imóvel em Campos do Jordão? Cadastre sua casa, apartamento ou terreno com a Imóveis em Campos do Jordão, imobiliária desde 2011. (154) |
| 5 | `/encomende-seu-imovel` | 16 | 0 | Não achou o imóvel certo em Campos do Jordão? Conte o tipo, o bairro e o valor que procura, e a Imóveis em Campos do Jordão busca opções para você. (147) |
| 6 | `/financiamento-e-bancos` | 16 | 0 | Financiamento e bancos: informações para financiar a compra de casa, apartamento ou terreno em Campos do Jordão. Tire suas dúvidas com a nossa equipe. (150) |
| 7 | `/avalie-seu-corretor` | 16 | 0 | Avalie o atendimento da Imóveis em Campos do Jordão. Sua opinião sobre o corretor e a visita ao imóvel ajuda a nossa equipe a atender cada vez melhor. (150) |
| 8 | `/cadastro-de-locatario` | 16 | 0 | Cadastro de locatário: envie seus dados para alugar casa ou apartamento em Campos do Jordão e agilize a análise da locação com a nossa imobiliária. (147) |
| 9 | `/cadastro-de-proposta` | 16 | 0 | Envie sua proposta de compra ou locação de imóvel em Campos do Jordão. Preencha o cadastro de proposta e a equipe da Imóveis em Campos do Jordão responde. (154) |
| 10 | `/imoveis-de-alto-padrao-em-campos-do-jordao` | 16 | 0 | Imóveis de alto padrão em Campos do Jordão: casas, mansões e apartamentos de luxo à venda, com fotos e detalhes. Imobiliária desde 2011, CRECI 23458-J. (151) |
| 11 | `/regularize-seu-imovel` | 1 (hoje 62 caracteres) | 65 | Regularização de imóvel em Campos do Jordão, urbano ou rural: envie seus dados e a Imóveis em Campos do Jordão orienta sobre documentos e próximos passos. (154) |
| 12 | `/condominios` | 1 | 0 | Condomínios em Campos do Jordão: apartamentos, casas e terrenos à venda e para alugar, organizados por condomínio, com fotos, preços e o bairro de cada um. (155) |
| 13 | `/imoveis/a-venda` | 1 | 0 | Imóveis à venda em Campos do Jordão: casas, apartamentos, terrenos, chácaras, pousadas e hotéis, com fotos e preços. Imobiliária local desde 2011. (146) |
| 14 | `/imoveis/a-venda/casa` | 1 | 2.415 | Casas à venda em Campos do Jordão no Alto do Capivari, Vila Capivari, Alto da Boa Vista e outros bairros, com fotos, preços e metragem. Desde 2011. (147) |
| 15 | `/imoveis/a-venda/terreno` | 1 | 488 | Terrenos à venda em Campos do Jordão, em condomínio e em loteamento, com metragem, preço e fotos. Imobiliária local desde 2011, CRECI 23458-J. (142) |
| 16 | `/imoveis/a-venda/apartamento` | 1 | 585 | Apartamentos à venda em Campos do Jordão, na Vila Capivari, no Alto do Capivari e em outros bairros, com fotos, preços e metragem. Desde 2011. (142) |
| 17 | `/imoveis/para-alugar` | 1 | 968 | Casas e apartamentos para alugar em Campos do Jordão, com fotos, valor do aluguel e metragem. Fale com a Imóveis em Campos do Jordão pelo WhatsApp. (147) |
| 18 | `/imoveis/para-alugar/casa` | 1 | 57 | Casas para alugar em Campos do Jordão, com fotos, valor do aluguel, quartos e metragem. Imobiliária local desde 2011: agende sua visita pelo WhatsApp. (150) |
| 19 | `/imoveis/para-alugar/apartamento` | 1 | 43 | Apartamentos para alugar em Campos do Jordão, com fotos, valor do aluguel e metragem. Imobiliária local desde 2011, CRECI 23458-J. Agende sua visita. (149) |
| 20 | `/imoveis/a-venda/hotel` | 1 | 47 | Hotéis à venda em Campos do Jordão para quem quer investir em hospedagem na serra, com fotos, preço e área. Imobiliária local desde 2011, CRECI 23458-J. (152) |

Notas:
- Bairros citados nas categorias: os que mais tinham imóveis do tipo no crawl (casas: Alto do Capivari 21, Vila Capivari 17, Alto da Boa Vista 15; apartamentos: Vila Capivari 56, Alto do Capivari 7).
- Páginas 1 a 12: Kenlo Sites (campo de SEO de cada página, se existir). Páginas 13 a 20: a descrição é gerada pelo Kenlo; se não houver campo, vai no `PEDIDO-KENLO.md`, item 5. As páginas 13–20 não são duplicadas hoje, mas são as que o plano A2 manda melhorar (CTR baixo).
- `/regularize-seu-imovel`: confirmar com o Roberto se a imobiliária faz ou indica regularização (o texto diz "orienta").
- `/imoveis/a-venda/casa` etc.: se a Kenlo unificar as categorias (item e), aplicar a descrição na versão que ficar.
- Antes de gravar, medir na Semrush SWA se for o caso (regra do projeto) e respeitar a rotina do "Publicar" (tarefa #42).

---

## (d) As 562 listagens com 1 imóvel

**O que é:** 562 listagens indexáveis mostram 1 só imóvel (H1 "Exibindo 1 ..."). Elas copiam o título da ficha e disputam com ela. Nenhuma está no sitemap XML. 510 são combinações de filtro (tipo × finalidade × cidade × bairro) e 52 são páginas de bairro ou condomínio (`/imoveis/campos-do-jordao/<slug>`).

Arquivo: `d-listagens-com-1-imovel.csv` (URL, tipo, título atual, links internos, impressões e cliques no GSC em 90 dias, recomendação).

**Recomendação (do plano, B5 e A1):**
- **547 sem nenhuma impressão no GSC:** `noindex,follow` e tirar dos blocos "Descubra outras possibilidades", "Bairros mais populares" e "Condomínios mais populares". É configuração do modelo → `PEDIDO-KENLO.md`, item 1. Não escrever texto próprio para elas.
- **15 com impressões no GSC — revisar antes de aplicar o noindex** (o Roberto decide; bairros e condomínios com busca podem ganhar conteúdo, plano C1/C2):

| URL | Impressões 90d | Cliques | Posição |
|---|---|---|---|
| `/imoveis/campos-do-jordao/vila-claudia` | 52 | 0 | 9,3 |
| `/imoveis/campos-do-jordao/jardim-california` | 43 | 0 | 8,7 |
| `/imoveis/campos-do-jordao/condominio-vila-simonsen` | 11 | 1 | 17,5 |
| `/imoveis/campos-do-jordao/edificio-montana` | 7 | 1 | 2,7 |
| `/imoveis/campos-do-jordao/minalba` | 3 | 0 | 12,0 |
| `/imoveis/campos-do-jordao/jardim-monte-belo` | 2 | 0 | 7,0 |
| `/imoveis/campos-do-jordao/jardim-embaixatriz` | 2 | 0 | 5,0 |
| `/imoveis/campos-do-jordao/san-remo` | 2 | 0 | 3,0 |
| `/imoveis/para-alugar/ponto` | 2 | 0 | 36,5 |
| `/imoveis/campos-do-jordao/home-green-home` | 1 | 0 | 2,0 |
| `/imoveis/campos-do-jordao/chateau-renoir` | 1 | 0 | 1,0 |
| `/imoveis/campos-do-jordao/edificio-maison-montmartre` | 1 | 1 | 11,0 |
| `/imoveis/campos-do-jordao/loteamento-veu-da-noiva` | 1 | 0 | 14,0 |
| `/imoveis/campos-do-jordao/jardim-das-flores` | 1 | 0 | 10,0 |
| `/imoveis/campos-do-jordao/jardim-primavera` | 1 | 0 | 2,0 |

Sugestão para o pedido à Kenlo: regra "listagem com menos de 2 imóveis = noindex,follow", **com exceção manual** para uma lista de bairros/condomínios que o Roberto indicar (se o Kenlo permitir).

---

## (e) Duplicidade de categorias

**O que é:** cada categoria existe em duas versões, cada uma com canonical para si mesma. A versão curta é a que o Google mostra (tem as impressões); a versão com `/campos-do-jordao` é a que está no sitemap e recebe mais links internos. As listagens de venda e aluguel geral têm até uma terceira versão (`/campos-do-jordao/campos-do-jordao`).

**Qual manter (plano A1, item 4):** a versão que já aparece no GSC — a curta (`/imoveis/a-venda/casa` etc.). Ela recebe o canonical da outra e entra no sitemap XML.

| Versão curta (manter) | Impressões GSC 90d | No sitemap? | Links internos | Versão com cidade | No sitemap? | Links internos |
|---|---|---|---|---|---|---|
| `/imoveis/a-venda/casa` (302 casas) | 2.415 | não | 526 | `/imoveis/a-venda/casa/campos-do-jordao` (294) | sim | 1.689 |
| `/imoveis/para-alugar` (27) | 968 | não | 82 | `/imoveis/para-alugar/campos-do-jordao` (27) | não | 22 |
| `/imoveis/a-venda/apartamento` (179) | 585 | não | 301 | `/imoveis/a-venda/apartamento/campos-do-jordao` (169) | sim | 1.672 |
| `/imoveis/a-venda/terreno` (161) | 488 | não | 334 | `/imoveis/a-venda/terreno/campos-do-jordao` (153) | sim | 1.688 |
| `/imoveis/para-alugar/casa` (7) | 57 | não | 118 | `/imoveis/para-alugar/casa/campos-do-jordao` (7) | sim | 1.668 |
| `/imoveis/a-venda/hotel` (13) | 47 | não | 109 | `/imoveis/a-venda/hotel/campos-do-jordao` (11) | não | 1.668 |
| `/imoveis/a-venda/fazenda` (4) | 43 | não | 117 | `/imoveis/a-venda/fazenda/campos-do-jordao` (1) | não | 1.678 |
| `/imoveis/para-alugar/apartamento` (18) | 43 | não | 126 | `/imoveis/para-alugar/apartamento/campos-do-jordao` (18) | sim | 1.668 |
| `/imoveis/a-venda` (691) | 0 | não | 1.995 | `/imoveis/a-venda/campos-do-jordao` (648) e `/imoveis/a-venda/campos-do-jordao/campos-do-jordao` (648) | não | 208 / 169 |

As outras 17 linhas (chácara, sítio, pousada, cobertura, flat, studio etc.) estão em `e-categorias-duplicadas.csv`, com a coluna `canonical_proposto`.

Pontos de atenção (dado do crawl):
- **A versão curta inclui imóveis de outras cidades** (302 casas na curta x 294 na de Campos do Jordão; 179 x 169 apartamentos; 161 x 153 terrenos). Ao unificar, a Kenlo precisa dizer se a página curta pode filtrar só Campos do Jordão ou se os imóveis de Santo Antônio do Pinhal / São Bento do Sapucaí ficam junto (decisão do Roberto, plano seção 3, pergunta 7).
- `/imoveis/a-venda/studio` responde 200 com 9 studios, mas `/imoveis/a-venda/studio/campos-do-jordao` dá 404 e recebe 14 links (está no item b).
- Algumas versões "com cidade" têm 1 imóvel só e também estão na lista do item d (ex.: `/imoveis/a-venda/fazenda/campos-do-jordao`).
- Defeito de H1 sem espaço em 8 páginas (ex.: "153Terrenos à venda Campos do Jordão - SP", "7Casas para alugar...", "2Imóveis encontrados..."). Vai no pedido à Kenlo.

**Onde:** só a Kenlo muda canonical e sitemap → `PEDIDO-KENLO.md`, item 2. Enquanto isso, nos links que dependem de nós (menu do Kenlo Sites, Linktree, diretórios), usar sempre a versão curta.

---

## (f) Imagens sem texto alternativo (alt)

**O que é:** 144 imagens sem alt em 11 páginas: 10 fichas de condomínio e `/fale-conosco`. O CSV traz a página e a quantidade, **não o arquivo de cada imagem**. A proposta usa o nome do condomínio, o tipo e o bairro que estão no H1 da página.

| Página | Sem alt / total | Alt proposto (padrão; trocar N pelo número da foto ou pelo ambiente) |
|---|---|---|
| `/condominio/quatre-saisons-...-1-a-325-m/18391970-JRLM` | 31 / 34 | Quatre Saisons, apartamentos e apartamentos duplex em Capivari, Campos do Jordão – foto N |
| `/condominio/edificio-belvedere-...-180-m/18603484-JRLM` | 21 / 25 | Edifício Belvedere, apartamentos e coberturas em Morro do Elefante, Campos do Jordão – foto N |
| `/condominio/h-marques-...-140-a-153-m/18542361-JRLM` | 16 / 19 | H. Marques, apartamentos em Vila Capivari, Campos do Jordão – foto N |
| `/condominio/village-embaixador-...-168-m/18436414-JRLM` | 15 / 18 | Village Embaixador, apartamentos e apartamentos duplex em Jardim do Embaixador, Campos do Jordão – foto N |
| `/condominio/edificio-vila-monica-...-152-a-175-m/18400223-JRLM` | 14 / 17 | Edifício Vila Mônica, apartamentos em Vila Capivari, Campos do Jordão – foto N |
| `/condominio/edificio-montana-...-267-m/18545266-JRLM` | 14 / 17 | Edifício Montana, apartamentos em Vila Capivari, Campos do Jordão – foto N |
| `/condominio/solar-dos-pinheirais-...-229-m/18535300-JRLM` | 11 / 14 | Solar dos Pinheirais, apartamentos e apartamentos duplex em São Francisco, Campos do Jordão – foto N |
| `/condominio/vila-everest-...-70-m/18541044-JRLM` | 10 / 13 | Vila Everest, apartamentos em Vila Iara, Campos do Jordão – foto N |
| `/condominio/parque-trenton-...-taubate-...-53-m/19021976-JRLM` | 7 / 10 | Parque Trenton, apartamentos em Vila São José, Taubaté – foto N |
| `/condominio/sobre-as-nuvens-...-52-a-55-m/18397340-JRLM` | 4 / 7 | Sobre as Nuvens, apartamentos em Alto da Boa Vista, Campos do Jordão – foto N |
| `/fale-conosco` | 1 / 3 | Não dá para inferir pelo CSV. Abrir a página e ver qual imagem está sem alt. Se for a fachada: "Fachada da Imóveis em Campos do Jordão na Av. Frei Orestes Girardi, 1423" |

URLs completas em `f-imagens-sem-alt.csv`.

Observações:
- Grafias do H1 que podem precisar de ajuste no cadastro do condomínio (regra #62): "Morro Do Elefante" e "Jardim Do Embaixador" (com "Do" maiúsculo no site; a proposta já usa minúsculo), "Vila Iara" x "Vila Yara" (o bairro foi renomeado para `vila-yara`, item a) e "São Francisco" x "Vila São Francisco".
- **Onde:** se o cadastro do condomínio no painel tiver campo de legenda/descrição da foto, o Claude preenche. Se não tiver, vai no `PEDIDO-KENLO.md`, item 10 (alt padrão com o nome do condomínio).
- Quando o ambiente da foto for visível (sala, piscina, fachada), trocar "foto N" pelo ambiente. Não descrever o que não está na foto.
