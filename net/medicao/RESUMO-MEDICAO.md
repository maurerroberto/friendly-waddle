# Medição do .net (imoveisemcamposdojordao.net), 11/10/2026

Arquivos: `MESTRE-NET.csv` (uma linha por URL HTML interna 200 da varredura), `FILA-FICHAS-NET.json` (fichas em ordem de prioridade), `raw/` (respostas brutas da Ahrefs).

## Fontes
| Fonte | Recorte | Observação |
|---|---|---|
| Ahrefs Site Audit, projeto 10408013 | última varredura disponível (05/10/2026) | 1.304 URLs com `is_valid_internal_html = true` |
| Ahrefs Site Audit, issues | mesma varredura | URLs por issue puxadas para 11 issues com URLs HTML afetadas |
| Google Search Console via Ahrefs (gsc-pages, projeto 10408013) | 13/07/2026 a 10/10/2026 (90 dias), web | 125 URLs com impressões; GSC está conectado ao projeto do .net |
| Ahrefs Site Explorer, top pages | 10/10/2026, modo subdomains | só 20 URLs com posição orgânica |

## Números gerais

- URLs HTML internas medidas: **1304**
- Fichas (`/imovel-`): **893**; categorias: **89**; páginas de bairro (`/tipo/finalidade/cidade/bairro`): **296**; blog: **19** (inclui `/blog`); outras (home e institucionais): **7**
- GSC, 90 dias, soma das 125 URLs: **755 cliques**, **12707 impressões** (a soma por página não é igual ao total do site no GSC, que conta por propriedade).

| Tipo | URLs | com impressão no GSC | impressões | cliques | mediana de palavras | mediana tempo de carga (ms) |
|---|---|---|---|---|---|---|
| ficha | 893 | 68 | 1228 | 12 | 754 | 693 |
| categoria | 89 | 17 | 4406 | 125 | 472 | 926 |
| bairro | 296 | 12 | 222 | 6 | 420.0 | 942.5 |
| blog | 19 | 9 | 445 | 3 | 1546 | 541 |
| outra | 7 | 3 | 5498 | 604 | 384 | 541 |

**Issues da Ahrefs por URL (contagem nas 1.304 URLs):**

- Title too long (Warning): 817
- Meta description too long (Warning): 394
- Multiple H1 tags (Notice): 391
- Page has only one dofollow incoming internal link (Notice): 217
- Slow page (Warning): 207
- Changed pages not submitted to IndexNow (Notice): 69
- Slow server response for AI crawlers (Warning): 53
- Page and SERP titles do not match (Notice): 16
- Pages have high AI content levels (Notice): 5
- H1 tag missing or empty (Warning): 1
- Page has links to broken page (Error): 1
- URLs sem nenhuma dessas issues: 67
- Indexable page not in sitemap (Notice): 1.304 no relatório de issues (= todas as URLs medidas). Não foi puxada URL a URL para economizar unidades, por isso não aparece na coluna `issues_ahrefs`.
- H1: 391 URLs com 2 H1, 1 com 0.

## Top 30 da fila de fichas

Ordem: impressões GSC (90 dias) desc, depois tráfego Ahrefs, depois palavras-chave, depois número de issues. `fora` = ficha que tem impressões no GSC mas não apareceu na varredura da Ahrefs.

| # | Ref. (número) | Código na URL | Impr. | Cliques | Posição | Tráfego Ahrefs | KW Ahrefs | Issues | URL |
|---|---|---|---|---|---|---|---|---|---|
| 1 | 2618 | 2618 | 183 | 1 | 11.19 | 0 | 1 | 2 | imovel-casa-venda-campos-do-jordao-vila-nova-suica-2618 |
| 2 | 2352 | 2352 | 161 | 5 | 11.9 | 0.0 | 0 | 1 | imovel-casa-venda-campos-do-jordao-cidade-do-sol-2352 |
| 3 | 2594 | 2594 | 149 | 3 | 10.93 | 3 | 2 | 2 | imovel-chacara-venda-campos-do-jordao-agua-santa-2594 |
| 4 | 2438 | 2438 | 121 | 0 | 10.83 |  | 0 | 0 (fora) | imovel-casa-venda-campos-do-jordao-vila-sodipe-2438 |
| 5 | 2621 | 2621 | 119 | 1 | 8.73 | 3 | 1 | 2 | imovel-chacara-venda-campos-do-jordao-parque-ferradura-2621 |
| 6 | 2905 | 2905 | 105 | 0 | 7.93 | 0.0 | 0 | 1 | imovel-casa-venda-campos-do-jordao-vila-nadir-2905 |
| 7 | 1764 | 1764 | 100 | 0 | 12.72 | 4 | 3 | 2 | imovel-terreno-venda-campos-do-jordao-cidade-do-sol-1764 |
| 8 | 2645 | 2645 | 94 | 0 | 9.66 | 1 | 1 | 0 (fora) | imovel-sitio-venda-campos-do-jordao-sao-bento-do-sapucai-2645 |
| 9 | 0405 | ca0405 | 52 | 0 | 13.29 | 0.0 | 0 | 1 | imovel-casa-venda-campos-do-jordao-jardim-otto-baumgart-ca0405 |
| 10 | 2185 | 2185 | 39 | 0 | 12.62 | 0 | 1 | 2 | imovel-casa-venda-campos-do-jordao-vila-paulista-2185 |
| 11 | 1861 | 1861 | 35 | 1 | 9.31 |  | 0 | 0 (fora) | imovel-casa-venda-campos-do-jordao-gran-ville-1861 |
| 12 | 2112 | 2112 | 28 | 0 | 55.57 | 0.0 | 0 | 1 | imovel-casa-venda-campos-do-jordao-alto-do-capivari-2112 |
| 13 | 2681 | 2681 | 28 | 0 | 8.57 | 0.0 | 0 | 1 | imovel-casa-venda-campos-do-jordao-jardim-california-2681 |
| 14 | 2501 | 2501 | 25 | 0 | 9.64 | 0.0 | 0 | 1 | imovel-terreno-venda-campos-do-jordao-umuarama-2501 |
| 15 | 2631 | 2631 | 23 | 0 | 11.52 | 0.0 | 0 | 0 | imovel-casa-venda-campos-do-jordao-vila-telma-2631 |
| 16 | 2678 | 2678 | 20 | 0 | 8.8 | 0.0 | 0 | 1 | imovel-apartamento-venda-campos-do-jordao-vila-campos-do-jordao-2678 |
| 17 | 0319 | ca0319 | 17 | 0 | 6.24 | 0.0 | 0 | 1 | imovel-casa-venda-campos-do-jordao-jardim-das-flores-ca0319 |
| 18 | 1384 | 1384 | 17 | 0 | 9.0 |  | 0 | 0 (fora) | imovel-casa-venda-campos-do-jordao-ceu-azul-1384 |
| 19 | 0138 | te0138 | 15 | 1 | 11.07 | 0.0 | 0 | 1 | imovel-terreno-venda-campos-do-jordao-jardim-cataguazes-te0138 |
| 20 | 2955 | 2955 | 13 | 0 | 7.62 | 0.0 | 0 | 1 | imovel-apartamento-venda-campos-do-jordao-recanto-floresta-negra-2955 |
| 21 | 2946 | 2946 | 13 | 0 | 58.85 |  | 0 | 0 (fora) | imovel-casa-venda-campos-do-jordao-parque-morro-pedra-do-fogo-2946 |
| 22 | 2448 | 2448 | 12 | 0 | 9.5 | 0.0 | 0 | 1 | imovel-casa-venda-campos-do-jordao-serra-azul-2448 |
| 23 | 0243 | ap0243 | 12 | 0 | 11.17 | 0.0 | 0 | 2 | imovel-apartamento-venda-locacao-campos-do-jordao-vila-iara-ap0243 |
| 24 | 2560 | 2560 | 11 | 0 | 9.55 | 0.0 | 0 | 1 | imovel-terreno-venda-campos-do-jordao-jardim-sumare-2560 |
| 25 | 3412 | 3412 | 7 | 1 | 11.86 | 0.0 | 0 | 2 | imovel-pousada-venda-campos-do-jordao-vale-encantado-3412 |
| 26 | 0180 | ap0180 | 7 | 0 | 6.43 | 0.0 | 0 | 1 | imovel-apartamento-venda-campos-do-jordao-vila-marinela-ap0180 |
| 27 | 3313 | 3313 | 7 | 0 | 8.14 |  | 0 | 0 (fora) | imovel-casa-venda-campos-do-jordao-vila-sodipe-3313 |
| 28 | 2616 | 2616 | 6 | 0 | 9.83 | 1 | 1 | 2 | imovel-casa-venda-campos-do-jordao-vila-britania-2616 |
| 29 | 3284 | 3284 | 6 | 0 | 10.33 | 0.0 | 0 | 1 | imovel-apartamento-venda-campos-do-jordao-jardim-sumare-3284 |
| 30 | 0008 | kn0008 | 6 | 0 | 11.0 | 0.0 | 0 | 1 | imovel-kitnet-locacao-campos-do-jordao-vila-nadir-kn0008 |

Total na fila: 906 (13 fora da varredura). Só 81 fichas tiveram alguma impressão em 90 dias; abaixo disso a ordem é decidida por issues e depois pela URL.

## Títulos duplicados

5 títulos repetidos, somando 410 URLs.

### "Lista completa de imóveis | Imóveis em Campos do Jordão" (385 URLs: categoria 89, bairro 296)

<details><summary>lista completa</summary>

- https://imoveisemcamposdojordao.net/apartamentos
- https://imoveisemcamposdojordao.net/apartamentos/locacao
- https://imoveisemcamposdojordao.net/apartamentos/locacao/campos-do-jordao
- https://imoveisemcamposdojordao.net/apartamentos/venda
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/apartamentos/venda/caraguatatuba
- https://imoveisemcamposdojordao.net/apartamentos/venda/sao-jose-dos-campos
- https://imoveisemcamposdojordao.net/apartamentos/venda/taubate
- https://imoveisemcamposdojordao.net/apartamentos/venda/ubatuba
- https://imoveisemcamposdojordao.net/areas-para-incorporacao
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/casas
- https://imoveisemcamposdojordao.net/casas/locacao
- https://imoveisemcamposdojordao.net/casas/locacao/campos-do-jordao
- https://imoveisemcamposdojordao.net/casas/locacao/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/casas/venda
- https://imoveisemcamposdojordao.net/casas/venda/camanducaia
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/casas/venda/capivari
- https://imoveisemcamposdojordao.net/casas/venda/pindamonhangaba
- https://imoveisemcamposdojordao.net/casas/venda/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/casas/venda/sao-jose-dos-campos
- https://imoveisemcamposdojordao.net/casas/venda/serra-negra
- https://imoveisemcamposdojordao.net/casas/venda/taubate
- https://imoveisemcamposdojordao.net/casas/venda/tremembe
- https://imoveisemcamposdojordao.net/chacaras
- https://imoveisemcamposdojordao.net/chacaras/venda
- https://imoveisemcamposdojordao.net/chacaras/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/chacaras/venda/pindamonhangaba
- https://imoveisemcamposdojordao.net/chacaras/venda/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/chacaras/venda/sapucai-mirim
- https://imoveisemcamposdojordao.net/coberturas
- https://imoveisemcamposdojordao.net/coberturas/venda
- https://imoveisemcamposdojordao.net/coberturas/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/fazendas
- https://imoveisemcamposdojordao.net/fazendas/venda
- https://imoveisemcamposdojordao.net/fazendas/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/fazendas/venda/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/fazendas/venda/sapucai-mirim
- https://imoveisemcamposdojordao.net/flats
- https://imoveisemcamposdojordao.net/flats/venda
- https://imoveisemcamposdojordao.net/flats/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/haras
- https://imoveisemcamposdojordao.net/haras/venda
- https://imoveisemcamposdojordao.net/haras/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/hoteis
- https://imoveisemcamposdojordao.net/hoteis/venda
- https://imoveisemcamposdojordao.net/hoteis/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/imoveis
- https://imoveisemcamposdojordao.net/imoveis/locacao
- https://imoveisemcamposdojordao.net/imoveis/permuta
- https://imoveisemcamposdojordao.net/imoveis/venda
- https://imoveisemcamposdojordao.net/kitnets
- https://imoveisemcamposdojordao.net/kitnets/locacao
- https://imoveisemcamposdojordao.net/kitnets/locacao/campos-do-jordao
- https://imoveisemcamposdojordao.net/lojas
- https://imoveisemcamposdojordao.net/lojas/locacao
- https://imoveisemcamposdojordao.net/lojas/locacao/campos-do-jordao
- https://imoveisemcamposdojordao.net/lojas/venda
- https://imoveisemcamposdojordao.net/lojas/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/pousadas
- https://imoveisemcamposdojordao.net/pousadas/venda
- https://imoveisemcamposdojordao.net/pousadas/venda/camanducaia
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/pousadas/venda/paraibuna
- https://imoveisemcamposdojordao.net/salas-comerciais
- https://imoveisemcamposdojordao.net/salas-comerciais/locacao
- https://imoveisemcamposdojordao.net/salas-comerciais/locacao/campos-do-jordao
- https://imoveisemcamposdojordao.net/salas-comerciais/venda
- https://imoveisemcamposdojordao.net/salas-comerciais/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/sitios
- https://imoveisemcamposdojordao.net/sitios/venda
- https://imoveisemcamposdojordao.net/sitios/venda/cacapava
- https://imoveisemcamposdojordao.net/sitios/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/sitios/venda/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/sitios/venda/sapucai-mirim
- https://imoveisemcamposdojordao.net/studios
- https://imoveisemcamposdojordao.net/studios/venda
- https://imoveisemcamposdojordao.net/studios/venda/sao-paulo
- https://imoveisemcamposdojordao.net/terrenos
- https://imoveisemcamposdojordao.net/terrenos/venda
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao
- https://imoveisemcamposdojordao.net/terrenos/venda/goncalves
- https://imoveisemcamposdojordao.net/terrenos/venda/santo-antonio-do-pinhal
- https://imoveisemcamposdojordao.net/terrenos/venda/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/terrenos/venda/taubate
- https://imoveisemcamposdojordao.net/terrenos/venda/tremembe
- https://imoveisemcamposdojordao.net/apartamentos/locacao/campos-do-jordao/fonte-simao
- https://imoveisemcamposdojordao.net/apartamentos/locacao/campos-do-jordao/jardim-perola
- https://imoveisemcamposdojordao.net/apartamentos/locacao/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/apartamentos/locacao/campos-do-jordao/vila-albertina
- https://imoveisemcamposdojordao.net/apartamentos/locacao/campos-do-jordao/vila-everest
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/alto-da-boa-vista
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/alto-da-vila-inglesa
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/alto-do-capivari
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/atalaia
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/bela-vista
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/capivari
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/ceu-azul
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/colinas-de-capivari
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/floresta-negra
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/fonte-simao
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/imbiry
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/jaguaribe
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/jardim-alpestre
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/jardim-andira
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/jardim-belvedere
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/jardim-elizabete
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/jardim-embaixador
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/jardim-manancial
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/jardim-sumare
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/morro-do-elefante
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/recanto-das-araucarias
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/recanto-feliz
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/recanto-floresta-negra
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/taubate
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vale-encantado
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-albertina
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-backer
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-campos-do-jordao
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-capivari
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-everest
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-floresta
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-iara
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-inglesa
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-izabel
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-marinela
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-natal
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-rica
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-sao-francisco
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-sapucai
- https://imoveisemcamposdojordao.net/apartamentos/venda/campos-do-jordao/vila-yara
- https://imoveisemcamposdojordao.net/apartamentos/venda/caraguatatuba/martim-de-sa
- https://imoveisemcamposdojordao.net/apartamentos/venda/sao-jose-dos-campos/vila-ema
- https://imoveisemcamposdojordao.net/apartamentos/venda/taubate/santa-luzia
- https://imoveisemcamposdojordao.net/apartamentos/venda/ubatuba/itagua
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/atalaia
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/descansopolis
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/floresta-negra
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/monte-carlo
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/parque-ferradura
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/pedra-do-fogo
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/vila-capivari
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/vila-ferraz
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/vila-inglesa
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/campos-do-jordao/vila-jaguaribe
- https://imoveisemcamposdojordao.net/areas-para-incorporacao/venda/sao-bento-do-sapucai/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/casas/locacao/campos-do-jordao/alto-da-vila-inglesa
- https://imoveisemcamposdojordao.net/casas/locacao/campos-do-jordao/campos-do-jordao
- https://imoveisemcamposdojordao.net/casas/locacao/campos-do-jordao/floresta-negra
- https://imoveisemcamposdojordao.net/casas/locacao/campos-do-jordao/vale-dos-sonhos
- https://imoveisemcamposdojordao.net/casas/locacao/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/casas/locacao/campos-do-jordao/vila-matilde
- https://imoveisemcamposdojordao.net/casas/locacao/sao-bento-do-sapucai/bairro-do-bau
- https://imoveisemcamposdojordao.net/casas/venda/camanducaia/rural
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/agua-santa
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/alto-da-boa-vista
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/alto-da-vila-inglesa
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/alto-do-capivari
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/atalaia
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/bairro-dos-melos
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/branca-nuvens
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/capivari
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/ceu-azul
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/chantal-i-e-ii
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/cidade-do-sol
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/colinas-de-capivari
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/colinas-do-imbiry
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/descansopolis
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/floresta-negra
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/florestal-club
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/floriano-rodrigues-pinheiro
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/fonte-simao
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/gran-ville
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/imbiry
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/iporanga
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jaguaribe
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-belvedere
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-california
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-cataguases
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-cataguazes
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-das-flores
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-das-perolas
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-do-pai
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-elizabete
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-embaixador
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-europa
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-guararema
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-manancial
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-marcia
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-miraflores
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-montebelo
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/jardim-veu-da-noiva
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/lagoinha
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/loteamento-veu-da-noiva
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/monte-carlo
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/monte-rei
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/morro-do-elefante
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/nova-capivari
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/parque-da-agua-santa
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/parque-das-aguas-claras
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/parque-das-fontes
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/parque-pedra-do-bau
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/passos-da-mantiqueira
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/pedra-do-fogo
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/portal-do-capivari
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/quebradas
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/quebradas-civitas
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/recanto-das-araucarias
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/recanto-do-fojo
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/recanto-feliz
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/recanto-floresta-negra
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/residencial-jardim-veu-das-noivas
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/serra-azul
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/toriba
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/tremembe
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vale-da-mantiqueira
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vale-encantado
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vale-feliz
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-albertina
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-britania
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-campos-do-jordao
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-capivari
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-claudia
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-cristina
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-everest
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-fracalanza
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-guarani
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-iara
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-imbiri
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-inglesa
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-jaguaribe
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-loly
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-magdalena
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-marinela
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-matilde
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-medica
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-nadir
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-natal
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-nova
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-nova-suica
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-ondina
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-paulista
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-pora
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-rica
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-sao-francisco
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-simonsen
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-siomara
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-sodipe
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-suica
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-sylvia
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vila-telma
- https://imoveisemcamposdojordao.net/casas/venda/campos-do-jordao/vista-alegre
- https://imoveisemcamposdojordao.net/casas/venda/capivari/vila-cardoso
- https://imoveisemcamposdojordao.net/casas/venda/pindamonhangaba/ribeirao-grande
- https://imoveisemcamposdojordao.net/casas/venda/sao-bento-do-sapucai/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/casas/venda/sao-jose-dos-campos/jardim-das-cerejeiras
- https://imoveisemcamposdojordao.net/casas/venda/serra-negra/serra-negra
- https://imoveisemcamposdojordao.net/casas/venda/taubate/agua-quente
- https://imoveisemcamposdojordao.net/casas/venda/tremembe/centro
- https://imoveisemcamposdojordao.net/chacaras/venda/campos-do-jordao/agua-santa
- https://imoveisemcamposdojordao.net/chacaras/venda/campos-do-jordao/chacaras-da-agua-santa
- https://imoveisemcamposdojordao.net/chacaras/venda/campos-do-jordao/parque-ferradura
- https://imoveisemcamposdojordao.net/chacaras/venda/campos-do-jordao/sapucai-mirim
- https://imoveisemcamposdojordao.net/chacaras/venda/pindamonhangaba/piracuama
- https://imoveisemcamposdojordao.net/chacaras/venda/sao-bento-do-sapucai/bairro-dos-borges
- https://imoveisemcamposdojordao.net/chacaras/venda/sapucai-mirim/sapucai-mirim
- https://imoveisemcamposdojordao.net/coberturas/venda/campos-do-jordao/capivari
- https://imoveisemcamposdojordao.net/coberturas/venda/campos-do-jordao/jardim-belvedere
- https://imoveisemcamposdojordao.net/coberturas/venda/campos-do-jordao/morro-do-elefante
- https://imoveisemcamposdojordao.net/coberturas/venda/campos-do-jordao/vila-backer
- https://imoveisemcamposdojordao.net/coberturas/venda/campos-do-jordao/vila-capivari
- https://imoveisemcamposdojordao.net/coberturas/venda/campos-do-jordao/vila-inglesa
- https://imoveisemcamposdojordao.net/fazendas/venda/campos-do-jordao/monte-carlo
- https://imoveisemcamposdojordao.net/fazendas/venda/campos-do-jordao/pedra-do-fogo
- https://imoveisemcamposdojordao.net/fazendas/venda/campos-do-jordao/sertaozinho-em-santo-antonio-do-pinhal
- https://imoveisemcamposdojordao.net/fazendas/venda/sao-bento-do-sapucai/jose-da-rosa
- https://imoveisemcamposdojordao.net/fazendas/venda/sapucai-mirim/sapucai-mirim
- https://imoveisemcamposdojordao.net/flats/venda/campos-do-jordao/alto-da-boa-vista
- https://imoveisemcamposdojordao.net/flats/venda/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/flats/venda/campos-do-jordao/vila-everest
- https://imoveisemcamposdojordao.net/flats/venda/campos-do-jordao/vila-ondina
- https://imoveisemcamposdojordao.net/haras/venda/campos-do-jordao/jardim-cataguases
- https://imoveisemcamposdojordao.net/haras/venda/campos-do-jordao/parque-das-aguas-claras
- https://imoveisemcamposdojordao.net/haras/venda/campos-do-jordao/sao-benedito
- https://imoveisemcamposdojordao.net/hoteis/venda/campos-do-jordao/capivari
- https://imoveisemcamposdojordao.net/hoteis/venda/campos-do-jordao/vila-capivari
- https://imoveisemcamposdojordao.net/kitnets/locacao/campos-do-jordao/vila-nadir
- https://imoveisemcamposdojordao.net/kitnets/locacao/campos-do-jordao/vila-nova-suica
- https://imoveisemcamposdojordao.net/lojas/locacao/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/lojas/venda/campos-do-jordao/capivari
- https://imoveisemcamposdojordao.net/pousadas/venda/camanducaia/rural
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/alto-da-boa-vista
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/alto-da-vila-inglesa
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/atalaia
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/capivari
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/jaguaribe
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/jardim-marcia
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/vale-encantado
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/vila-britania
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/vila-iara
- https://imoveisemcamposdojordao.net/pousadas/venda/campos-do-jordao/vila-inglesa
- https://imoveisemcamposdojordao.net/pousadas/venda/paraibuna/paraibuna
- https://imoveisemcamposdojordao.net/salas-comerciais/locacao/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/salas-comerciais/venda/campos-do-jordao/jaguaribe
- https://imoveisemcamposdojordao.net/salas-comerciais/venda/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/sitios/venda/cacapava/caminho-da-mata
- https://imoveisemcamposdojordao.net/sitios/venda/campos-do-jordao/alpes-de-campos-do-jordao
- https://imoveisemcamposdojordao.net/sitios/venda/campos-do-jordao/monte-carlo
- https://imoveisemcamposdojordao.net/sitios/venda/campos-do-jordao/parque-ferradura
- https://imoveisemcamposdojordao.net/sitios/venda/campos-do-jordao/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/sitios/venda/campos-do-jordao/sapucai-mirim
- https://imoveisemcamposdojordao.net/sitios/venda/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/sitios/venda/sao-bento-do-sapucai/sao-bento-do-sapucai
- https://imoveisemcamposdojordao.net/sitios/venda/sao-bento-do-sapucai/serrano
- https://imoveisemcamposdojordao.net/sitios/venda/sapucai-mirim/sapucai-mirim
- https://imoveisemcamposdojordao.net/studios/venda/sao-paulo/vila-pompeia
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/agua-santa
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/alpes-de-campos-do-jordao
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/alto-da-boa-vista
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/alto-do-capivari
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/atalaia
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/branca-nuvens
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/chantal-i-e-ii
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/cidade-do-sol
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/colinas-de-capivari
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/colinas-do-imbiry
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/descansopolis
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/gran-ville
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/iporanga
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jaguaribe
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-cataguases
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-cataguazes
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-elizabete
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-embaixador
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-floriano-pinheiro
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-guararema
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-imperial
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-miraflores
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-sumare
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/jardim-veu-da-noiva
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/minalba
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/monte-rei
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/morro-do-elefante
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/nova-capivari
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/parque-ferradura
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/parque-pedra-do-bau
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/passos-da-mantiqueira
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/pedra-do-fogo
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/pinhalzinho-em-santo-antonio-do-pinhal
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/pirangucu-minas-gerais
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/quebradas
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/quebradas-civitas
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/recanto-das-araucarias
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/recanto-dubieux
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/recanto-floresta-negra
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/serra-azul
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/umuarama
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vale-dos-sonhos
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vale-encantado
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vale-feliz
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-abernessia
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-backer
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-capivari
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-chantal
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-dubieux
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-magdalena
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-matilde
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-natal
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-nova
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-nova-suica
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-pora
- https://imoveisemcamposdojordao.net/terrenos/venda/campos-do-jordao/vila-silvia
- https://imoveisemcamposdojordao.net/terrenos/venda/goncalves/sertao-de-cantagalo
- https://imoveisemcamposdojordao.net/terrenos/venda/santo-antonio-do-pinhal/santo-antonio-do-pinhal
- https://imoveisemcamposdojordao.net/terrenos/venda/sao-bento-do-sapucai/bairro-do-bau
- https://imoveisemcamposdojordao.net/terrenos/venda/taubate/piracangagua
- https://imoveisemcamposdojordao.net/terrenos/venda/taubate/una
- https://imoveisemcamposdojordao.net/terrenos/venda/tremembe/centro

</details>

### "Perguntas Frequentes | Imóveis em Campos do Jordão" (19 URLs: outra 1, blog 18)

- https://imoveisemcamposdojordao.net/duvidas-e-perguntas-frequentes
- https://imoveisemcamposdojordao.net/blog/alto-da-boa-vista-tranquilidade-e-cultura-em-campos-do-jordao
- https://imoveisemcamposdojordao.net/blog/alugar-em-campos-do-jordao-como-funciona-o-mercado-de-locacao-anual
- https://imoveisemcamposdojordao.net/blog/apartamentos-a-venda-em-campos-do-jordao-bairros-e-precos
- https://imoveisemcamposdojordao.net/blog/atalaia-campos-do-jordao-o-bairro-de-quem-compra-terreno-para-construir
- https://imoveisemcamposdojordao.net/blog/casas-a-venda-em-campos-do-jordao-bairros-e-precos
- https://imoveisemcamposdojordao.net/blog/casas-de-alto-padrao-e-mansoes-a-venda-em-campos-do-jordao
- https://imoveisemcamposdojordao.net/blog/como-vender-um-imovel-de-alto-padrao-em-campos-do-jordao
- https://imoveisemcamposdojordao.net/blog/condominios-em-campos-do-jordao-casas-e-terrenos-em-condominio-fechado
- https://imoveisemcamposdojordao.net/blog/descansopolis-campos-do-jordao-terreno-grande-e-mata-no-caminho-do-horto
- https://imoveisemcamposdojordao.net/blog/melhores-bairros-de-campos-do-jordao-para-morar-e-comprar-imovel
- https://imoveisemcamposdojordao.net/blog/morro-do-elefante-campos-do-jordao-morar-no-cartao-postal-da-cidade
- https://imoveisemcamposdojordao.net/blog/permuta-em-campos-do-jordao-12-imoveis-que-aceitam-troca-e-as-cidades-que-os-donos-querem
- https://imoveisemcamposdojordao.net/blog/quanto-custa-morar-em-campos-do-jordao
- https://imoveisemcamposdojordao.net/blog/quem-somos-imobiliaria-em-campos-do-jordao
- https://imoveisemcamposdojordao.net/blog/terreno-com-vista-em-campos-do-jordao-guia-para-construir-chale-de-temporada
- https://imoveisemcamposdojordao.net/blog/terrenos-a-venda-em-campos-do-jordao-bairros-e-precos
- https://imoveisemcamposdojordao.net/blog/vale-a-pena-morar-em-campos-do-jordao-uma-resposta-honesta
- https://imoveisemcamposdojordao.net/blog/vila-abernessia-o-bairro-de-quem-mora-em-campos-do-jordao

### "Apartamento Residencial para Venda - Campos do Jordão, Jardim Elizabete - REF: AP0260" (2 URLs: ficha 2)

- https://imoveisemcamposdojordao.net/imovel-apartamento-venda-campos-do-jordao-jardim-elizabete-3293
- https://imoveisemcamposdojordao.net/imovel-apartamento-venda-campos-do-jordao-jardim-elizabete-ap0260

### "Apartamento Residencial para Venda - Campos do Jordão, Vila Backer - REF: AP0124" (2 URLs: ficha 2)

- https://imoveisemcamposdojordao.net/imovel-apartamento-venda-campos-do-jordao-vila-backer-2916
- https://imoveisemcamposdojordao.net/imovel-apartamento-venda-campos-do-jordao-vila-backer-ap0124

### "Casa Residencial para Venda - Campos do Jordão, Jardim Embaixador - REF: CA0041" (2 URLs: ficha 2)

- https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-jardim-embaixador-1890
- https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-jardim-embaixador-3310

Observação: as fichas duplicadas em par são o mesmo imóvel com duas URLs (uma com número, outra com o código), segundo o próprio título.

## O que não deu para medir

- **Site ao vivo**: a rede bloqueia o domínio; todos os títulos, metas, H1 e palavras são os da varredura da Ahrefs de 05/10, não de hoje.
- **Issue por URL de todas as issues**: puxei 11 issues (as que têm URLs HTML). `Missing alt text` (216) conta imagens, não páginas, e não foi cruzado. `Indexable page not in sitemap` (1.304) ficou só no total. 404/4XX (1 URL) e redirects não estão no mestre porque não são HTML 200.
- **Palavras-chave e tráfego Ahrefs por URL**: o Site Explorer só tem 20 URLs com posição; as demais ficam vazias (não é zero medido, é ausência no índice). A coluna `trafego_ahrefs_siteaudit` vem do Site Audit e é 0 em quase todas.
- **GSC fora da varredura**: 16 URLs têm impressões mas não estão entre as 1.304 (ex.: `http://www.imoveisemcamposdojordao.net/`, `/imoveis?pmin=200000`, 13 fichas e 1 página de bairro). As fichas entram na fila marcadas como `fora_do_crawl_ahrefs`; o resto não entra no mestre.
  - https://imoveisemcamposdojordao.net/imoveis?pmin=200000
  - http://www.imoveisemcamposdojordao.net/
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-gran-ville-1861
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-vila-sodipe-2438
  - https://imoveisemcamposdojordao.net/imovel-sitio-venda-campos-do-jordao-sao-bento-do-sapucai-2645
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-ceu-azul-1384
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-parque-morro-pedra-do-fogo-2946
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-vila-sodipe-3313
  - https://imoveisemcamposdojordao.net/imovel-apartamento-venda-campos-do-jordao-vale-encantado-1806
  - https://imoveisemcamposdojordao.net/imovel-apartamento-venda-campos-do-jordao-jardim-sumare-3283
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-vila-suica-3226
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-vila-sao-francisco-2486
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-recanto-jair-rocha-pinheiro-ca0444
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-recanto-dubieux-ca0460
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-parque-pedra-do-bau-ca0336
  - https://imoveisemcamposdojordao.net/casas/locacao/campos-do-jordao/vila-nova-suica
- **Referência numérica**: é o número no fim da URL. Em fichas com código (`ca0405`, `ap0243`...) o número sozinho se repete entre tipos (ex.: `0138` em AP e TE), por isso há a coluna `codigo_url`. O título traz outra REF (ex.: URL `-2321` com `REF: 2604`); não cruzei com o cadastro. Uma ficha não termina em número: `imovel-sitio-venda-sao-bento-do-sapucai-serrano-si0006-69220ef496bec`.
- **Tempo de carga**: é o `loading_time` do robô da Ahrefs (HTML, ms), não Core Web Vitals; CWV não veio preenchido na varredura.
- **Posição GSC por consulta**: só a média por página e a palavra principal; não puxei gsc-keywords por URL.

Unidades Ahrefs gastas nesta medição: cerca de 1.400 (22 chamadas do page explorer a 50, issues 50, top pages 260, GSC 0).
