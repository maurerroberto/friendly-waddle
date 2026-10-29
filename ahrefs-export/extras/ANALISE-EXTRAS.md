# Análise Ahrefs — funcionalidades extras (GSC, Rank Tracker, Web Analytics, IA, técnico)

Site: **imoveisemcamposdojordao.com** (versão canônica `https://www.imoveisemcamposdojordao.com/`). Também foram consultados o .net e o .com.br onde fazia sentido.
Data da extração: 29/10/2026. Crawl do Site Audit usado: projeto 10408012, concluído em 26/10/2026 (2.241 URLs internas, health score 91).
Todos os números abaixo vêm das respostas da API da Ahrefs. Arquivos brutos estão nesta pasta (lista no fim).

---

## 1. O que foi e o que não foi possível exportar

| Recurso | Situação | Observação |
|---|---|---|
| Google Search Console (via Ahrefs) | **Exportado** | GSC conectado nos projetos 10408012 (.com), 10408014 (www.com, mesma propriedade) e 10408013 (.net). Os dados da Ahrefs só começam em **abril/maio de 2026**, então não há 16 meses: o máximo é abr/2026 a out/2026. |
| gsc-keywords | Exportado | A API devolve no máximo **250 linhas por chamada** (mesmo pedindo 1000). Por isso a consulta foi dividida por faixa de posição: **723 palavras (90 dias, completo)** e **872 palavras (16 meses, quase completo; podem faltar ~45 termos de 1 impressão)**. |
| gsc-pages | Exportado | 90 dias: 213 páginas (completo). 16 meses: 250 primeiras (limite da API). |
| gsc-performance-history, ctr-by-position, performance-by-position, by-device, by-country, positions-history | Exportados | Mensal e semanal. |
| gsc-anonymous-queries | Exportado | Só 3 termos retornados (BR). |
| Rank Tracker | **Sem dados** | Os 3 projetos têm `keyword_count = 0`; `management-project-keywords` e `rank-tracker-overview` vieram vazios. Não adicionei palavras (isso usaria cota de keywords rastreadas do plano, não só unidades). Os endpoints de concorrentes/SERP do Rank Tracker dependem de palavras rastreadas, então também não têm dados. |
| Web Analytics | **Sem dados** | Projetos existem e têm chave (`web_analytics_data_key`), mas `web-analytics-stats` retorna 0 visitas de jan/2025 a out/2026, tanto no .com quanto no .net. Ou seja, **o script do Ahrefs Web Analytics não está instalado** no site. Top pages, sources, entry pages, devices e cities não foram exportados porque estão todos zerados. |
| Visibilidade em IA (`site-explorer-ai-responses-count`) | Exportado | .com, .net e .com.br. |
| Brand Radar (mentions/impressions/SoV/cited pages) | **Indisponível** | A API respondeu `Missing addon: Brand Radar` (para ChatGPT e para AI Overviews). É um add-on pago, então **não criei relatório**. Não há relatórios existentes. |
| Site Audit page explorer | Exportado | 2.241 URLs, 46 colunas (status, profundidade, títulos, descrições, H1, duplicados, palavras, imagens sem alt, links internos, redirecionamentos, tempo de carga, TTFB, tamanho). **Dados de PageSpeed/Core Web Vitals não existem**: `psi_request_status = Gapi_psi_user_not_asked` em todas as páginas (a integração PageSpeed não está ativada no projeto). |
| site-audit-page-content | Exportado | Home, /imoveis/a-venda/casa, /imoveis/para-alugar, um bairro (/imoveis/campos-do-jordao/jardim-veu-da-noiva) e uma ficha (CA0421). HTML bruto + texto em markdown em `page-content/`. |
| site-explorer-pages-by-internal-links / linked-anchors-internal | **Vazio** | A Ahrefs não tem links internos indexados para o domínio no Site Explorer (0 linhas para .com e www.com). Substituí pela contagem de links internos do Site Audit (`incoming_links`). |
| site-explorer-pages-history, metrics-history, domain-rating-history | Exportados | 12 meses (out/2025 a out/2026), .com e .net. |

---

## 2. Google Search Console: visão geral

**Evolução mensal (projeto .com 10408012):**

| Mês | Cliques | Impressões | CTR % | Posição média |
|---|---:|---:|---:|---:|
| abr/2026 (parcial, via projeto 10408014) | 272 | 6.358 | 4,28 | 8,1 |
| mai/2026 | 845 | 17.434 | 4,85 | 8,1 |
| jun/2026 | 756 | 17.888 | 4,23 | 8,3 |
| jul/2026 | 927 | 18.928 | 4,90 | 8,1 |
| ago/2026 | 949 | 17.449 | 5,44 | 8,3 |
| set/2026 | 867 | 20.871 | 4,15 | 8,0 |
| out/2026 (até 27/10) | 538 | 15.741 | 3,42 | 8,2 |

Leitura: as impressões subiram em set/out (as semanas de 28/09 a 12/10 tiveram 5.759 a 6.690 impressões, contra cerca de 4.000 em ago), mas os cliques ficaram estáveis em torno de 200 por semana. Por isso o CTR caiu de cerca de 5,5% para cerca de 3,4%. O site está aparecendo para mais buscas sem ganhar cliques, o que bate com as oportunidades "quase lá" abaixo.

**Últimos 90 dias (29/07 a 27/10/2026):**
- Dispositivo: mobile 1.196 cliques / 23.166 impressões (CTR 5,2%, pos. 7,6); desktop 537 / 12.423 (CTR 4,3%, pos. 9,0); tablet 28 / 266.
- País: Brasil 2.315 cliques; todos os outros países somam menos de 50.
- Distribuição por posição (palavras com dados no GSC): 1–3: 91 palavras e 171 cliques (27%); **4–10: 355 palavras, 404 cliques (65%) e 8.596 impressões (67% do total)**; 11–20: 154 palavras, 42 cliques e 2.262 impressões; 21–50: 99 palavras; 51+: 24.
- Palavras por faixa de posição ao longo do tempo (positions-history): o total foi de 157 (mai) para 573 (ago) e depois caiu para 456 (set). Em top 3 foram 6 → 45 → 49 → 64 → 44.
- As 723 consultas identificadas somam 623 cliques dos cerca de 1.760 do período. O resto vem de consultas anonimizadas pelo Google.

### .net (projeto 10408013) também tem GSC e compete pelo mesmo público
O .net é outro site, com estrutura de URL e blog diferentes: `/casas`, `/terrenos`, `/imovel-casa-venda-...`, `/blog/...`. Ele recebe tráfego relevante: mai 1.003, jun 718, jul 830, ago 767, set 650 e out (parcial) 301 cliques. A home do .net ranqueia para "imoveis em campos do jordão" (478 cliques e 4.643 impressões em 90 dias, pos. 6,9). **Os dois domínios disputam as mesmas buscas.** A home do .com também tem link no menu para `https://www.imoveisemcamposdojordao.net/dicionario-imoveis-campos-do-jordao`.

---

## 3. Oportunidades "quase lá": posição 4–20, ordenadas por impressões (top 50)

Período: 90 dias (29/07 a 27/10/2026). Há 507 palavras nessa faixa, com 10.852 impressões e só 446 cliques. Lista completa em `quase-la-pos4-20-90d.csv`.
"(http) /" significa que o Google ainda mostra a home na versão **http://www**. Veja a seção 7.

| # | Palavra-chave | Impr. | Cliques | CTR % | Pos. | URL que ranqueia |
|---|---|---:|---:|---:|---:|---|
| 1 | imobiliaria campos do jordão | 441 | 39 | 8.8 | 5.0 | / |
| 2 | imoveis campos do jordão | 387 | 77 | 19.9 | 4.2 | / |
| 3 | casa a venda em campos do jordão | 383 | 1 | 0.3 | 8.5 | /imoveis/a-venda/casa |
| 4 | imobiliária campos do jordão | 354 | 38 | 10.7 | 4.7 | (http) / |
| 5 | casas a venda em campos do jordão | 342 | 7 | 2.0 | 8.8 | /imoveis/a-venda/casa |
| 6 | imobiliarias em campos do jordão | 331 | 38 | 11.5 | 6.9 | / |
| 7 | imobiliaria em campos do jordão | 307 | 24 | 7.8 | 6.1 | / |
| 8 | casa a venda campos do jordao | 295 | 3 | 1.0 | 8.7 | /imoveis/a-venda/casa |
| 9 | aluguel campos do jordão | 283 | 5 | 1.8 | 10.6 | /imoveis/para-alugar |
| 10 | imoveis a venda em campos do jordão | 186 | 20 | 10.8 | 4.4 | (http) / |
| 11 | imobiliária em campos do jordão | 184 | 7 | 3.8 | 7.7 | (http) / |
| 12 | imobiliarias campos do jordão | 177 | 20 | 11.3 | 5.9 | / |
| 13 | terreno campos do jordão | 177 | 1 | 0.6 | 9.4 | /imoveis/a-venda/terreno |
| 14 | casas a venda campos do jordão | 170 | 1 | 0.6 | 9.1 | /imoveis/a-venda/casa |
| 15 | aluguel em campos do jordão | 151 | 6 | 4.0 | 12.3 | /imoveis/para-alugar |
| 16 | apartamento a venda em campos do jordão | 144 | 6 | 4.2 | 9.0 | /imoveis/a-venda/apartamento |
| 17 | casas em campos do jordão | 138 | 4 | 2.9 | 9.9 | /imoveis/a-venda/casa |
| 18 | casa em campos do jordão | 126 | 1 | 0.8 | 8.2 | /imoveis/a-venda/casa |
| 19 | imobiliarias em campos do jordao | 115 | 5 | 4.3 | 5.6 | (http) / |
| 20 | imobiliaria campos do jordao | 109 | 3 | 2.8 | 5.0 | (http) / |
| 21 | condominio veu da noiva campos do jordao | 107 | 2 | 1.9 | 5.7 | /imoveis/campos-do-jordao/jardim-veu-da-noiva |
| 22 | campos do jordão aluguel | 105 | 2 | 1.9 | 11.2 | /imoveis/para-alugar |
| 23 | casa para alugar em campos do jordão | 98 | 5 | 5.1 | 12.3 | /imoveis/para-alugar |
| 24 | casa a venda campos do jordão | 93 | 4 | 4.3 | 9.6 | /imoveis/a-venda/casa |
| 25 | apartamentos a venda em campos do jordão | 88 | 5 | 5.7 | 7.9 | /imoveis/a-venda/apartamento |
| 26 | casas campos do jordão | 86 | 0 | 0.0 | 9.5 | / |
| 27 | casa venda campos do jordao | 84 | 1 | 1.2 | 8.8 | /imoveis/a-venda/casa |
| 28 | campos do jordão casas a venda | 81 | 0 | 0.0 | 8.6 | / |
| 29 | casas a venda em campos do jordao | 80 | 3 | 3.8 | 9.0 | /imoveis/a-venda/casa |
| 30 | leilão campos do jordão | 77 | 0 | 0.0 | 10.8 | (http) / |
| 31 | terreno em campos do jordão | 74 | 1 | 1.4 | 8.8 | /imoveis/a-venda/terreno |
| 32 | casa campos do jordão | 74 | 0 | 0.0 | 9.5 | /imoveis/a-venda/casa |
| 33 | abernessia imoveis | 70 | 0 | 0.0 | 5.8 | /imoveis/campos-do-jordao/abernessia |
| 34 | casa a venda em campos do jordao | 70 | 2 | 2.9 | 9.5 | /imoveis/a-venda/casa |
| 35 | imobiliária campos do jordão aluguel | 67 | 3 | 4.5 | 5.0 | /imoveis/para-alugar |
| 36 | casa em campos do jordão a venda | 67 | 0 | 0.0 | 8.8 | (http) / |
| 37 | terrenos em campos do jordão | 66 | 0 | 0.0 | 8.6 | /imoveis/a-venda/terreno |
| 38 | imoveis a venda em campos do jordao | 65 | 11 | 16.9 | 4.4 | / |
| 39 | imoveis a venda campos do jordão | 65 | 5 | 7.7 | 6.6 | / |
| 40 | regularização de imóvel rural em campos do jordão | 65 | 0 | 0.0 | 6.9 | /regularize-seu-imovel |
| 41 | campos do jordao casas | 63 | 0 | 0.0 | 10.6 | (http) / |
| 42 | aluguel campos do jordao | 62 | 0 | 0.0 | 12.0 | (http) / |
| 43 | casa em campos do jordao | 61 | 2 | 3.3 | 10.0 | / |
| 44 | apartamento para alugar em campos do jordão | 61 | 1 | 1.6 | 10.3 | /imoveis/para-alugar |
| 45 | vila nadir campos do jordão | 60 | 1 | 1.7 | 8.4 | /imoveis/campos-do-jordao/vila-nadir |
| 46 | imobiliárias em campos do jordão | 59 | 4 | 6.8 | 6.8 | / |
| 47 | jardim sumaré campos do jordão | 59 | 0 | 0.0 | 9.6 | /imoveis/campos-do-jordao/jardim-sumare |
| 48 | cidade do sol campos do jordão | 55 | 1 | 1.8 | 6.5 | /imoveis/campos-do-jordao/cidade-do-sol |
| 49 | terreno a venda em campos do jordão | 53 | 1 | 1.9 | 7.6 | /imoveis/a-venda/terreno |
| 50 | casas em campos do jordao | 52 | 0 | 0.0 | 12.5 | /imoveis/a-venda/casa |

**Padrões que aparecem na lista:**
1. **"casa(s) a venda em campos do jordão" e variações** (itens 3, 5, 8, 14, 17, 18, 24, 27, 29, 32, 34 e 50). São mais de 2.000 impressões somadas, posição 8–10 e CTR perto de 0–2%. A URL é `/imoveis/a-venda/casa`, que teve 2.415 impressões e 35 cliques (CTR 1,4%, pos. 9,7). **É a maior oportunidade do site.** Subir para o top 5 deve multiplicar os cliques, já que o CTR médio do próprio site é 9,3% na posição 4–6 e 2,5% na 7–10.
2. **Aluguel** ("aluguel campos do jordão", "aluguel em campos do jordão", "casa para alugar em campos do jordão" etc.), posição 10–12, em `/imoveis/para-alugar`. Essa página tem só 27 imóveis e 1.061 palavras contadas pelo crawler (a maioria vem de menu e rodapé; é o menor `.md` exportado).
3. **Terreno** ("terreno campos do jordão", "terrenos em campos do jordão", "terreno a venda em campos do jordão"), posição 8–9, CTR menor que 1,5%, em `/imoveis/a-venda/terreno`.
4. **Termos de marca/categoria "imobiliária(s) em campos do jordão"**, posição 4–7, com CTR já razoável (8–11%). Ganhar 2–3 posições aqui depende mais de autoridade (DR 2,2) e de Perfil da Empresa no Google do que de mudança on-page.
5. **Bairros e condomínios** (Véu da Noiva, Abernéssia, Vila Nadir, Jardim Sumaré, Cidade do Sol), posição 5–10 e CTR de 0–2%. As páginas de bairro têm title genérico do tipo "14 Imóveis encontrados Jardim Véu da Noiva, Campos do Jordão - SP".

### Páginas com CTR baixo para a posição
Critério: ao menos 40 impressões em 90 dias, posição média até 20 e CTR abaixo da metade do CTR médio do próprio site naquela faixa de posição (*CTR esperado = cliques/impressões de todas as palavras do site na faixa: 1–3 = 12,0%, 4–6 = 9,3%, 7–10 = 2,5%, 11–15 = 1,8%, 16–20 = 2,1%). Lista: `paginas-ctr-baixo-90d.csv`.

| Página | Impr. | Cliques | CTR % | Pos. média | CTR esperado* % | Top keyword |
|---|---:|---:|---:|---:|---:|---|
| /imoveis/a-venda/terreno | 488 | 5 | 1.0 | 8.7 | 2.5 | terreno a venda em campos do jordão |
| /imoveis/campos-do-jordao/jardim-veu-da-noiva | 198 | 2 | 1.0 | 5.8 | 9.3 | condominio veu da noiva campos do jordao |
| /imoveis/campos-do-jordao/vila-nadir | 91 | 1 | 1.1 | 8.3 | 2.5 | vila nadir campos do jordão |
| /imoveis/campos-do-jordao/pedra-do-fogo | 82 | 0 | 0.0 | 9.7 | 2.5 | condominio pedra do fogo |
| /imoveis/campos-do-jordao/abernessia | 82 | 0 | 0.0 | 13.8 | 1.8 | vila abernéssia |
| /imoveis/campos-do-jordao/jardim-sumare | 79 | 0 | 0.0 | 9.2 | 2.5 | jardim sumaré |
| /regularize-seu-imovel | 65 | 0 | 0.0 | 6.9 | 2.5 | regularização de imóvel rural em campos do jordão |
| /imoveis/campos-do-jordao/alto-da-vila-inglesa | 63 | 0 | 0.0 | 11.8 | 1.8 | vila marinela campos do jordão |
| /imoveis/campos-do-jordao/floresta-negra | 55 | 0 | 0.0 | 10.3 | 2.5 | residencial floresta negra |
| /imoveis/campos-do-jordao/vila-claudia | 52 | 0 | 0.0 | 9.3 | 2.5 | vila cláudia |
| /imoveis/campos-do-jordao/vila-suica | 50 | 0 | 0.0 | 19.0 | 2.1 | condomínio vila suíça |
| /imoveis/campos-do-jordao/jardim-california | 43 | 0 | 0.0 | 8.7 | 2.5 | jardin california |
| /imoveis/a-venda/fazenda | 43 | 0 | 0.0 | 15.3 | 1.8 | chacara em campos do jordão |

Também merecem atenção, mesmo fora do critério:
- **`/imoveis/a-venda/casa`**: 2.415 impressões, CTR 1,4%, pos. 9,7.
- **`/imoveis/a-venda/apartamento`**: 585 impressões, CTR 2,6%, pos. 10,2.
- **A home em http://** (3.239 impressões, CTR 4,9%) contra a home em https (4.153 impressões, CTR 8,1%). A versão http divide os sinais (seção 7).
- **URLs que já redirecionam (301) e ainda aparecem no GSC**: `/imoveis/campos-do-jordao/pedra-do-fogo` (82 impressões, redireciona para `/condominio-morro-pedra-do-fogo`) e `/imoveis/campos-do-jordao/vila-suica` (50 impressões, redireciona para `/vila-nova-suica`).

**Ações sugeridas (Kenlo):** reescrever o title e a meta description das páginas de listagem de casas, terrenos, aluguel e dos bairros principais. Hoje são gerados automaticamente ("302 Casas à venda - Imóveis em Campos do Jordão" e "302 imóveis à venda, na faixa de R$ 550 mil a R$ 8,6 mi..."). Sugestão: colocar a palavra-chave primeiro e um diferencial, por exemplo "Casas à venda em Campos do Jordão – 300+ opções com fotos e preços". Em seguida, acrescentar um bloco de texto próprio (introdução e FAQ) no topo ou no rodapé dessas listagens. Se o painel Kenlo não permitir editar o title/descrição/texto de páginas de busca, é preciso pedir ao suporte Kenlo (é configuração de template) ou criar landing pages fixas com esse conteúdo.

---

## 4. Problemas técnicos priorizados (Site Audit 10408012, crawl de 26/10/2026)

Base: 2.241 URLs internas: 2.047 com 200, 141 com 404, 1 com 410, 51 com 301 e 1 com 302. São 1.996 páginas HTML com 200, das quais 1.984 são indexáveis (1.202 listagens `/imoveis/...`, 711 fichas `/imovel/...`, 48 `/condominio/...` e páginas institucionais). Uma lista CSV por problema está em `tecnico/`.

| Prioridade | Problema | Nº URLs | Exemplo | Como corrigir no Kenlo |
|---|---|---:|---|---|
| **1 – Alta** | **Listagens indexáveis com só 1 resultado** (H1 "Exibindo 1 ..."). Elas copiam o title da ficha e competem com ela. Exemplo: o title de `/imoveis/para-alugar/ponto/campos-do-jordao` é "Ponto Abernéssia - Campos do Jordão, aluguel por R$ 6.500/mês". | 562 | `/imoveis/a-venda/casa/serra-negra`, `/imoveis/serra-negra` e `/imoveis/a-venda/serra-negra`: as três com o title "Casa de 973 m² Serra Negra - Serra Negra, à venda por R$ 6.200.000" | São combinações de filtro (tipo × cidade × bairro) que o Kenlo gera e linka automaticamente. Pedir ao suporte Kenlo: `noindex,follow` (ou canonical para a listagem-pai) em listagens com menos de 2–3 imóveis, e não linkar combinações vazias ou de 1 item nos blocos "Descubra outras possibilidades" e "Bairros/Condomínios mais populares". |
| **1 – Alta** | **Títulos duplicados** (indexáveis) | 684 (208 grupos) | "Imóveis à venda - Imóveis em Campos do Jordão" aparece em 10 URLs (`/imoveis/a-venda/campos-do-jordao/mountain-view`, `.../le-verbier-village-residence` ...); "Imóveis encontrados - Imóveis em Campos do Jordão" em 9 | Consequência direta do item anterior e de bairros e condomínios sem nome no title. Também há 32 fichas com title repetido, por exemplo "Casa à venda no Alto da Boa Vista em Campos do Jordão" em 4 fichas (CA0072, CA0438, CA0243, CA0306). Nas fichas: editar o título do anúncio no cadastro do imóvel para incluir um diferencial (quartos, m² ou característica). |
| **1 – Alta** | **H1 duplicado** | 680 | `/imoveis/a-venda/ponto/campos-do-jordao` tem o H1 "Exibindo 1 Ponto Vila Capivari..." | Mesma causa e mesma correção. |
| **2 – Alta** | **Links internos para 404** | 60 páginas com link para 4xx; 142 URLs 4xx que recebem 239 links | `/imoveis/a-venda/studio/campos-do-jordao`, `/imoveis/para-alugar/sala/campos-do-jordao` e `/imoveis/a-venda/sala/campos-do-jordao` (14 links cada); `/imoveis/campos-do-jordao/villa-americana`, `/bairro-do-centro` e `/cdhu` (12 cada); 25 URLs `/imoveis/novos/...`. Páginas de origem: `/avalie-seu-corretor` (5 links quebrados), `/imoveis/a-venda` (5), fichas de condomínio como `/condominio/mon-palais-mes-amis-...` | Listagens sem estoque (studio, sala, "novos") retornam 404 mas continuam linkadas em menus e blocos. No Kenlo: remover esses tipos e bairros dos menus e filtros quando não houver imóveis, ou pedir que a página vazia retorne 200 com a mensagem "sem imóveis no momento" e `noindex`. Corrigir bairros com nome antigo nos condomínios cadastrados (villa-americana, bairro-do-centro, cdhu). |
| **2 – Alta** | **Links internos apontando para redirecionamentos (301/302)** | 52 URLs que redirecionam e recebem **2.249 links internos** | `/imoveis/campos-do-jordao/pedra-do-fogo` → `/condominio-morro-pedra-do-fogo` (236 links); `/altos-do-capivari` → `/alto-do-capivari` (224); `/vila-abernessia` → `/abernessia` (164); `/imoveis/a-venda/terreno/campos-do-jordao/pedra-do-fogo` (211) | Os bairros foram renomeados no Kenlo, mas imóveis ou condomínios ainda estão cadastrados com o bairro antigo, ou o bloco de links usa o slug antigo. Unificar o cadastro de bairros (um nome por bairro) para que os links apontem direto para a URL final. Não há cadeias: todos os redirecionamentos têm 1 salto. |
| **2 – Média** | **Redirecionamento para página `noindex`** | 3 | `/imoveis/campos-do-jordao/jardim-cataguazes` → `/jardim-cataguases` (noindex); `/parque-ferradura` → `/parque-da-ferradura` (noindex); `/imbiri` → `/imbiry` (noindex) | Há 12 páginas com noindex, entre elas 9 de bairro ou condomínio (jardim-cataguases, velden-village, parque-da-ferradura, jardim-do-pai, edificio-mantiqueira, luz-do-sol, le-verbier-village-residence, vila-nova, imbiry). Há buscas no GSC para alguns desses nomes, como "velden village" e "edificio mantiqueira". Verificar no Kenlo por que esses bairros e condomínios estão com noindex (possivelmente poucos imóveis) e decidir se devem ser indexados. |
| **3 – Média** | **Meta descriptions duplicadas** | 565 (267 grupos) | A descrição da home ("Imobiliária em Campos do Jordão desde 2011: casas, apartamentos, terrenos e chácaras...") se repete em 16 páginas: `/`, `/avalie-seu-corretor`, `/cadastre-seu-imovel`, `/fale-conosco`, `/quem-somos` ... | Escrever uma descrição própria para cada página institucional (painel Kenlo > páginas do site / SEO, se o campo existir; senão, suporte). As listagens repetem a descrição automática "1 imóvel à venda em X, na faixa de R$ A a R$ A". Isso se resolve com o item 1. |
| **3 – Média** | **Title com mais de 60 caracteres** | 656 | `/condominios` tem title de 107 caracteres: "Apartamentos, Casas, Apartamentos duplex, Terrenos, Coberturas, Apartamentos triplex, Áreas, Flats, Kitnets"; a home tem 61 | Encurtar o title de `/condominios`, por exemplo "Condomínios em Campos do Jordão \| Imóveis em Campos do Jordão". Nas listagens o excesso vem do title da ficha copiado (item 1). |
| **3 – Média** | **URLs malformadas** (link externo tratado como interno) | 8 | `https://www.imoveisemcamposdojordao.com/https://www.climaaovivo.com.br/sp/campos-do-jordao`, `.../https://goo.gl/maps/...`, `.../https://camposdojordaomun.presconinformatica.com.br/certidaoValorVenal.jsf`, `.../https://www.imoveisemcamposdojordao.net/dicionario-imoveis-campos-do-jordao`. Respondem 200, sem H1 (são as 8 páginas "sem H1") | Todas vêm de **`/sitemap/paginas`**, o sitemap HTML do Kenlo, que monta esses links como relativos. No menu da home eles estão corretos. Pedir ao suporte Kenlo para corrigir o sitemap HTML, ou remover esses itens do menu "Links úteis/Serviços" para que não entrem no sitemap HTML. |
| **4 – Média** | **Páginas lentas (carga acima de 3 s no crawler)** | 17 | `/imoveis/a-venda/apartamento/campos-do-jordao/residencial-reali-fiori` (7,98 s; TTFB 7,81 s), `/imovel/apartamento-campos-do-jordao-3-quartos/AP0234-JRLM` (7,71 s), `/imoveis/campos-do-jordao/vila-real` (6,65 s) | Medianas: carga 1,04 s e TTFB 0,91 s (p90 1,30 s / 1,05 s). A lentidão é de servidor (o TTFB é quase todo o tempo), não de peso da página: a mediana é de 68 KB comprimidos, mas o HTML bruto passa de 300–640 KB nas listagens. Isso é do lado do Kenlo; reportar ao suporte. **Para medir Core Web Vitals, ativar a integração PageSpeed no Site Audit** (hoje sem dados). |
| **4 – Baixa** | **Indexáveis fora do sitemap XML** | 1.182 (de 1.984) | 1.122 são listagens/filtros. Todas as 711 fichas estão no sitemap | Está coerente com o item 1, já que listagens de filtro não deveriam estar no sitemap. Verificar só se bairros importantes (Capivari, Jardim Véu da Noiva, Alto da Boa Vista etc.) estão no sitemap. |
| **4 – Baixa** | **Profundidade de clique ≥ 3** | 75 (66 com profundidade 3 e 9 com 4) | `/condominio/palacio-de-buckingham-...`, `/condominio/mon-palais-mes-amis-...` | No geral a profundidade é boa (804 páginas no nível 0 via sitemap, 561 no nível 1 e 556 no nível 2). Linkar as fichas de condomínio a partir de `/condominios` e das páginas de bairro. |
| **4 – Baixa** | **Imagens sem alt** | 144 imagens em 11 páginas | `/condominio/h-marques-apartamentos-...` (16), `/condominio/edificio-vila-monica-...` (14), `/fale-conosco` (1) | Nas fichas de condomínio do Kenlo, preencher a legenda ou descrição das fotos, se disponível, ou pedir ao suporte que use o nome do condomínio como alt padrão. |
| **4 – Baixa** | **Órfãs** (sem nenhum link interno, só no sitemap) | 4 | `/imovel/terreno-campos-do-jordao-5-531-m/TE0200-JRLM`, `/imovel/casa-campos-do-jordao-5-quartos/CA0125-JRLM`, `/imovel/casa-campos-do-jordao-5-quartos-567-m/CA0434-JRLM`, `/imovel/casa-campos-do-jordao-3-quartos-385-m/CA0153-JRLM` | Conferir no Kenlo se esses imóveis estão ativos ou publicados. Se estiverem inativos, tirar do sitemap; se ativos, provavelmente falta bairro ou tipo para aparecerem nas listagens. 19 fichas têm até 2 links internos (a mediana das fichas é 6). |
| OK | Descrição curta (<70 caracteres) | 24 | `/regularize-seu-imovel`: "É fácil! Preencha os campos abaixo e nos envie a sua mensagem!" | Esta página tem 106 impressões em 16 meses para "regularização de imóvel rural em campos do jordão" (pos. 12,5) e **0 cliques**. Vale escrever um title, uma descrição e um texto sobre regularização. |
| OK | Canonical | 0 problemas | Todas as 1.996 HTML 200 têm canonical apontando para si mesmas | Nada a fazer. |
| OK | Hreflang | não usado | Site só em pt-BR | Nada a fazer. |
| OK | Conteúdo raso | 0 páginas indexáveis com menos de 300 palavras (mínimo 311) | n/a | O texto é inflado por menus e rodapé. O texto exclusivo das listagens é pequeno (ver o `.md` de `/imoveis/para-alugar`). |
| OK | Cadeias de redirecionamento / loops | 0 | n/a | n/a |
| OK | Dados estruturados | Presentes | Home: WebSite + SearchAction + RealEstateAgent; listagens: BreadcrumbList + ItemList + RealEstateListing + Offer; ficha: RealEstateListing + Accommodation + Offer + BreadcrumbList | Bom. |

### O que o crawler vê (site-audit-page-content)
- **Home**: title "Imobiliária em Campos do Jordão | Imóveis em Campos do Jordão", canonical https://www, `robots FOLLOW, INDEX` e um H1 que junta "Imóveis à venda e para alugar em Campos do Jordão" com "A vida que você deseja em Campos do Jordão começa aqui!". O texto começa com "Habilite o javascript de seu navegador." Os blocos principais são "Imóveis mais buscados", "Bairros mais populares" e "Condomínios mais populares". Cerca de 1.900 palavras, quase todas em links.
- **/imoveis/a-venda/casa**: H1 "Exibindo 302 Casas à venda"; os H2 são nomes de bairros dos cards ("Jardim Miraflores - Campos do Jordão - SP"...), sem nenhum texto editorial sobre comprar casa em Campos do Jordão. HTML bruto de cerca de 600 KB.
- **Ficha CA0421**: title, H1 e H2 iguais ("Casa à venda na Água Santa, Campos do Jordão, com 6 suítes"; o H2 se repete 2 vezes). A descrição é própria e boa, com dados estruturados completos.
- **Bairro Jardim Véu da Noiva**: title "14 Imóveis encontrados Jardim Véu da Noiva, Campos do Jordão - SP"; os H2 repetem "Jardim Véu da Noiva - Campos do Jordão - SP" em todos os cards. Não há texto sobre o bairro, embora seja o que a busca "condominio veu da noiva campos do jordao" (pos. 5,7, CTR 1,9%) procura.
- **/imoveis/para-alugar**: 27 imóveis e o menor texto entre as páginas analisadas (cerca de 13,5 mil caracteres de markdown, a maior parte menu).

---

## 5. Visibilidade em IA

`site-explorer-ai-responses-count`, dado mais recente:

| Domínio | Todas as plataformas (citações / páginas) | ChatGPT | Perplexity | Gemini | Copilot | AI Overviews (prompts) | AI Mode | Grok | AI Overviews (por palavra-chave) |
|---|---|---|---|---|---|---|---|---|---|
| imoveisemcamposdojordao.com | **19 / 6** | 1 / 1 | 0 | 0 | 0 | 0 | 0 | 0 | 18 / 5 |
| imoveisemcamposdojordao.net | **41 / 13** | 2 / 3 | 0 | 2 / 1 | 0 | 2 / 1 | 0 | 0 | 35 / 10 |
| imoveisemcamposdojordao.com.br | 0 / 0 | 0 | n/a | n/a | n/a | n/a | n/a | n/a | 0 |

- A presença em IA é mínima e vem quase toda de citações em AI Overviews do Google em buscas comuns. O **.net, que tem blog, é citado cerca de 2 vezes mais que o .com**, o que indica que o conteúdo editorial (guias de bairro, "vale a pena morar em Campos do Jordão") é o que faz a IA citar o site.
- **Brand Radar** (menções, impressões, share of voice e páginas citadas para a marca "Imóveis em Campos do Jordão") **não está disponível**: a conta não tem o add-on (erro `Missing addon: Brand Radar`). Nenhum relatório foi criado.

---

## 6. Evolução de tráfego orgânico estimado e DR (Site Explorer, 12 meses)

| Mês | .com tráfego orgânico estimado | .com páginas no top 100 | .com DR | .net tráfego estimado | .net DR |
|---|---:|---:|---:|---:|---:|
| out/2025 | 77 | 22 | 2,8 | 291 | 0,3 |
| nov/2025 | 109 | 14 | 3,5 | 354 | 0,1 |
| dez/2025 | 107 | 18 | 3,4 | 305 | 0,0 |
| jan/2026 | 122 | 20 | 3,2 | 382 | 0,1 |
| fev/2026 | 71 | 20 | 3,2 | 380 | 0,1 |
| mar/2026 | 35 | 20 | 3,2 | 386 | 0,1 |
| abr/2026 | 115 | 17 | 3,2 | 352 | 0,1 |
| mai/2026 | 148 | 12 | 3,2 | 382 | 0,1 |
| jun/2026 | 124 | 13 | 3,3 | 401 | 0,1 |
| jul/2026 | 129 | 18 | 3,3 | 211 | 0,0 |
| ago/2026 | 106 | 16 | 3,3 | 189 | 0,0 |
| set/2026 | 175 | 15 | 3,2 | 201 | 0,0 |
| out/2026 | 231 | 12 | **2,2** | 223 | 0,0 |

- O tráfego estimado do .com triplicou em 12 meses (77 → 231). Ainda assim, a estimativa da Ahrefs é cerca de 4 vezes menor que o real do GSC (cerca de 870–950 cliques/mês).
- **O DR do .com caiu de 3,2 para 2,2 em outubro/2026**, provavelmente por perda de domínios de referência. O agente de backlinks deve confirmar.
- Hoje o Site Explorer registra **42 palavras orgânicas (11 no top 3) e 190 de tráfego para https://www**; **0 para http://www e 0 para o domínio sem www**.
- Valor do tráfego orgânico (.com, out/2026): 534 centavos de USD, ou seja, cerca de US$ 5,34/mês.

---

## 7. http vs https e www vs sem www

**Como estão os redirecionamentos (crawl do Site Audit de 26/10/2026):**

| URL | Status | Destino |
|---|---|---|
| `http://imoveisemcamposdojordao.com/` | 301 | `https://www.imoveisemcamposdojordao.com/` |
| `http://www.imoveisemcamposdojordao.com/` | 301 | `https://www.imoveisemcamposdojordao.com/` |
| `https://imoveisemcamposdojordao.com/` | 301 | `https://www.imoveisemcamposdojordao.com/` |
| `http://imoveisemcamposdojordao.com/robots.txt` | 301 | `https://www.imoveisemcamposdojordao.com/robots.txt` |

Todos têm um único salto, direto para a versão canônica, e todas as páginas têm canonical `https://www...`. Isso está correto.

**Mas o Google ainda mostra a versão http://www da home (dados GSC):**
- Em 90 dias, `http://www.imoveisemcamposdojordao.com/` teve **159 cliques e 3.239 impressões** (pos. 5,7, 176 palavras), contra 337 cliques e 4.153 impressões da `https://www.../`.
- **94 das 723 palavras** têm a versão http como URL principal (113 cliques e 2.147 impressões), entre elas "imobiliária campos do jordão" (354 impressões), "imoveis a venda em campos do jordão" e "imobiliarias em campos do jordao".
- A tendência é de queda da versão http: impressões de jun 1.865 → jul 2.342 → ago 1.927 → **set 1.109**. O Google está consolidando, mas devagar. **Por isso a Semrush mostra o .com duplicado em http e https.**
- O Site Explorer da Ahrefs já não atribui nenhuma palavra a http:// nem ao domínio sem www.

**Recomendações:**
1. Ativar **HSTS** (`Strict-Transport-Security`) no domínio. No Kenlo isso costuma ser feito pelo suporte ou no DNS/CDN, se houver Cloudflare.
2. No Google Search Console, conferir se existe propriedade de domínio (cobre http e https) e pedir a reindexação de `https://www.imoveisemcamposdojordao.com/`.
3. Conferir se o sitemap XML só lista URLs `https://www` e se perfis externos (Google Business Profile, Instagram, portais, diretórios) apontam para `https://www`. Backlinks antigos para `http://` mantêm essa versão viva.
4. Decidir o papel do **.net**: hoje é um site paralelo, com 135 páginas no GSC e cerca de 650–1.000 cliques/mês, disputando as mesmas buscas do .com. Ou ele vira o blog/conteúdo com links para o .com, ou é redirecionado (301 por URL) para as páginas equivalentes do .com. O .com.br não tem nenhuma citação em IA nem projeto na Ahrefs.

---

## 8. Arquivos gerados (`/home/user/friendly-waddle/ahrefs-export/extras/`)

- GSC: `gsc-keywords-90d-completo.{csv,json}` (723), `gsc-keywords-16m.{csv,json}` (872), `gsc-pages-90d.{csv,json}` (213), `gsc-pages-16m.{csv,json}` (250), `gsc-performance-history-monthly.csv`, `gsc-performance-history-weekly.csv`, `gsc-performance-history-monthly-projeto-www-10408014.csv`, `gsc-performance-history-monthly-NET-10408013.csv`, `gsc-pages-90d-NET-top25.csv`, `gsc-ctr-by-position-90d.csv`, `gsc-performance-by-position-90d.csv`, `gsc-performance-by-device-90d.csv`, `gsc-metrics-by-country-90d.csv`, `gsc-positions-history-monthly.csv`, `gsc-anonymous-queries-br.csv`
- Oportunidades: `quase-la-pos4-20-90d.csv` (507), `paginas-ctr-baixo-90d.csv` (13)
- IA: `ai-responses-count.json`
- Histórico: `site-explorer-history-12m-com.csv`, `site-explorer-history-12m-net.csv`
- Site Audit: `site-audit-page-explorer-10408012.{csv,json}` (2.241 URLs × 46 colunas) e `tecnico/*.csv` (uma lista por problema)
- Conteúdo visto pelo crawler: `page-content/*.raw.html` e `page-content/*.md` (5 páginas)
