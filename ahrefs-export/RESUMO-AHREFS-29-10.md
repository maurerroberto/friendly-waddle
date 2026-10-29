# Exportação Ahrefs — imoveisemcamposdojordao.com — 29/10/2026

Fonte: API Ahrefs v3 (ferramentas MCP `mcp__Ahrefs__*`). Os dados estão salvos como a API devolveu (CSV quando o endpoint aceita CSV, JSON quando não aceita ou quando a estrutura é aninhada). País = BR onde há parâmetro de país, data = 2026-10-29, modo `subdomains`.
Consumo aproximado: cerca de 66.300 unidades de API em 44 chamadas de dados.

> Observação: as subpastas `concorrentes/`, `extras/` (dados de GSC) e `palavras/` nesta pasta **não** foram geradas por esta exportação. Elas apareceram durante o trabalho, vindas de outro processo, e não estão descritas abaixo.

---

## 1. Arquivos exportados

| Arquivo | Conteúdo | Linhas de dados |
|---|---|---|
| `site-audit-projects.json` | Resumo do projeto Site Audit 10408012 (health score, totais) | 1 projeto |
| `site-audit-issues.csv` | Todas as issues do último crawl, com contagens (crawled, change, added, new, removed, missing) | 184 issues (44 com ocorrência > 0) |
| `site-audit-page-explorer-urls-com-erros.csv` | URLs com pelo menos uma issue de nível **Error**, colunas: url, http_code, title, depth, traffic, incoming_all_links, links_count_internal4xx, page_is_noindex, canonical, issues | 202 URLs únicas |
| `site-audit-page-explorer/erro-4xx-page.json` | Page Explorer bruto para a issue "4XX page" | 142 |
| `site-audit-page-explorer/erro-404-page.json` | Page Explorer bruto para a issue "404 page" (só url e http_code; é um subconjunto de 4XX) | 141 |
| `site-audit-page-explorer/erro-page-has-links-to-broken-page.json` | Page Explorer bruto para "Page has links to broken page" | 52 |
| `site-audit-page-explorer/erro-orphan-page.json` | Page Explorer bruto para "Orphan page" | 4 |
| `site-audit-page-explorer/erro-multiple-meta-description-tags.json` | Page Explorer bruto para "Multiple meta description tags" | 3 |
| `site-audit-page-explorer/erro-noindex-page-in-sitemap.json` | Page Explorer bruto para "Noindex page in sitemap" | 1 |
| `site-explorer-metrics-BR.json` | Métricas orgânicas/pagas (BR) | 1 |
| `site-explorer-metrics-todos-paises.json` | Mesmas métricas sem filtro de país (valores idênticos aos do BR) | 1 |
| `site-explorer-domain-rating.json` | DR e Ahrefs Rank em 29/10/2026 | 1 |
| `site-explorer-domain-rating-history-12m.csv` | Histórico mensal do DR (out/2025 a out/2026) | 13 |
| `site-explorer-backlinks-stats.json` | Totais de backlinks e domínios de referência (vivos e históricos) | 1 |
| `site-explorer-referring-domains.csv` | Domínios de referência vivos (domain, DR, links, dofollow, first_seen, last_seen, is_spam, traffic_domain, positions) | 840 |
| `site-explorer-all-backlinks.csv` | Backlinks vivos agrupados como "similar_links" (url_from, url_to, anchor, DR/UR da origem, dofollow, spam, tipo, datas) | 849 |
| `site-explorer-broken-backlinks.csv` | Backlinks quebrados (só o cabeçalho; a API devolveu 0 linhas) | 0 |
| `site-explorer-anchors.csv` | Textos-âncora (refdomains, links, dofollow, refpages, top DR, datas, spam) | 112 |
| `site-explorer-organic-keywords-BR.json` | Palavras orgânicas BR, no JSON bruto da API (este endpoint não aceita CSV) | 44 |
| `site-explorer-organic-keywords-BR.csv` | As mesmas 44 palavras em CSV plano, gerado a partir do JSON (listas unidas com `\|`) | 44 |
| `site-explorer-top-pages-BR.csv` | Páginas com tráfego orgânico BR (url, tráfego, nº de palavras, palavra principal, posição, volume, valor, RD, UR) | 12 |
| `site-explorer-organic-competitors-BR.csv` | Concorrentes orgânicos BR (pedi 100; a API devolveu 20) | 20 |
| `net-site-explorer-metrics-BR.json` | Métricas orgânicas BR de imoveisemcamposdojordao.net | 1 |
| `net-site-explorer-organic-keywords-BR.json` / `.csv` | Palavras orgânicas BR do .net (JSON bruto + CSV plano) | 50 |
| `net-site-explorer-top-pages-BR.csv` | Top pages BR do .net | 24 |
| `com-br-site-explorer-metrics-BR.json` | Métricas BR do .com.br (tudo zerado) | 1 |
| `com-br-site-explorer-organic-keywords-BR.json` | Palavras do .com.br (lista vazia) | 0 |
| `com-br-site-explorer-top-pages-BR.csv` | Top pages do .com.br (só o cabeçalho) | 0 |
| `management-projects.json` | Projetos da conta (3 projetos, todos com keyword_count = 0) | 3 |
| `management-project-keywords-10408012.json` | Palavras do Rank Tracker do projeto 10408012 (lista vazia) | 0 |
| `rank-tracker-overview-10408012-desktop.json` | Visão geral do Rank Tracker, desktop, 29/10 (lista vazia) | 0 |

---

## 2. Números principais

### Site Audit (projeto 10408012, crawl concluído em 2026-10-26 02:41 UTC)
- **Health score: 91**
- URLs internas rastreadas: **2.241**
- URLs com erros: **202**, com avisos: **1.740**, com notices: **2.014**

**Issues de nível Error com ocorrência** (nº de URLs; variação em relação ao crawl anterior):
| Issue | URLs | Variação |
|---|---|---|
| 4XX page | 142 | −38 |
| 404 page (contida em 4XX) | 141 | −23 |
| Page has links to broken page | 52 | −106 |
| Orphan page (has no incoming internal links) | 4 | 0 |
| Multiple meta description tags | 3 | 0 |
| Noindex page in sitemap | 1 | −10 |

Quase todas as 142 páginas 4XX são combinações de tipo de imóvel e bairro em `/imoveis/<tipo>/campos-do-jordao/<bairro>` e em `/imoveis/novos/...`. Uma delas retorna 410 (`/imovel/casa-campos-do-jordao-3-quartos-160-m/CA0514-JRLM`). As 4 páginas órfãs são fichas de imóvel (TE0200, CA0125, CA0434 e CA0153). As 3 com meta description duplicada são `/sitemap`, `/sitemap/paginas` e `/sitemap/condominios`. A página noindex que está no sitemap é `/politica-de-privacidade`.

**Principais Warnings:**
| Issue | URLs | Variação |
|---|---|---|
| Slow page | 1.071 | −66 |
| Page has links to redirect | 840 | +186 |
| Title too long | 438 | +396 |
| Meta description too short | 198 | +196 |
| 3XX redirect | 52 | −42 |
| Slow server response for AI crawlers | 26 | −33 |
| Missing alt text | 12 | −3 |
| Noindex page | 12 | −735 |
| H1 tag missing or empty | 8 | 0 |

**Principais Notices:** Structured data has schema.org validation error (1.600), Changed pages not submitted to IndexNow (1.466), Indexable page not in sitemap (1.182), Meta description changed (1.174), Structured data has Google rich results validation error (760), Noindex page became indexable (735).

### Autoridade e backlinks
- **Domain Rating: 0,4** em 29/10/2026 (Ahrefs Rank 74.085.499).
- Histórico mensal do DR: 3,2 em out/2025, pico de 3,5 em nov/2025, entre 3,2 e 3,4 até set/2026, e **2,1 em out/2026**.
- **Backlinks vivos: 1.485** (3.561 em todo o histórico).
- **Domínios de referência vivos: 842** (1.187 em todo o histórico). O CSV traz 840 deles, porque faltaram 2 na paginação.
- Dos 840 domínios exportados, **817 estão marcados como spam** pela Ahrefs (`is_spam = 1`). Dos 849 grupos de backlinks, 824 são spam. São redes de "SEO/backlink shops" (.shop, .store, .xyz, checkers de DA/DR etc.).
- Domínios **não** marcados como spam incluem youtube.com (DR 99), example3.com (76), siteprice.org (71), sitelike.org (64), odp.org (38), guiacamposjordao.com.br (24), ycm.info (16), alljobs.info (15), entre outros. A lista completa está no CSV, filtrando `is_spam = 0`.
- **Backlinks quebrados: 0** (a API devolveu 0 linhas).
- Âncoras: 112. As principais são textos de spam, como "Premium SEO Authority Backlinks to Help imoveisemcamposdojordao.com…", com 283 domínios, e "I remember when imoveisemcamposdojordao.com struggled…", com 228.

### Orgânico — imoveisemcamposdojordao.com (BR)
- **Palavras orgânicas: 44**, das quais 12 no top 3.
- **Tráfego orgânico estimado: 198 visitas/mês**, com valor estimado de US$ 5,54/mês (`org_cost` = 554 centavos).
- Páginas com tráfego: 12. As principais são `/imoveis/a-venda/casa` (77), `/imoveis/a-venda/terreno` (43), `/` (36) e `/imoveis/para-alugar` (19).

**Top 10 palavras por tráfego (BR):**
| # | Palavra | Posição | Volume | Tráfego | URL |
|---|---|---|---|---|---|
| 1 | casas a venda campos do jordão | 2 | 300 | 19 | /imoveis/a-venda/casa |
| 2 | casa a venda campos do jordao | 7 | 250 | 19 | /imoveis/a-venda/casa |
| 3 | terreno campos do jordão | 6 | 300 | 18 | /imoveis/a-venda/terreno |
| 4 | aluguel campos do jordão | 6 | 200 | 14 | /imoveis/para-alugar |
| 5 | imoveis em campos do jordão | 2 | 40 | 14 | / |
| 6 | casa a venda em campos do jordão | 8 | 400 | 11 | /imoveis/a-venda/casa |
| 7 | casas a venda campos do jordao | 1 | 40 | 9 | / |
| 8 | campos do jordão casas a venda | 4 | 100 | 8 | /imoveis/a-venda/casa |
| 9 | casas para alugar campos do jordão | 5 | 100 | 8 | / |
| 10 | terreno em campos do jordão | 5 | 90 | 7 | /imoveis/a-venda/terreno |

O 10º lugar está empatado em tráfego 7 com "terreno a venda em campos do jordão" (posição 4) e "casa a venda campos do jordão" (posição 2). A ordem segue a resposta da API.

**Principais concorrentes orgânicos (BR, por palavras em comum):**
| Domínio | DR | Palavras em comum | Tráfego do concorrente |
|---|---|---|---|
| olx.com.br | 76 | 38 | 12.760.171 |
| vivareal.com.br | 71 | 36 | 1.052.319 |
| imovelweb.com.br | 68 | 35 | 687.736 |
| zapimoveis.com.br | 73 | 33 | 1.030.775 |
| domaniimoveis.com.br | 0,9 | 30 | 1.013 |
| capivariimoveis.com.br | 24 | 23 | 357 |
| imoveisemcamposdojordao.net | 0 | 22 | 233 |
| montanhesimoveis.com.br | 5 | 16 | 114 |
| cesaresantannaimoveis.com.br | 3,2 | 15 | 180 |
| marcomuratori.com.br | 1,2 | 11 | 176 |

Os outros concorrentes estão no CSV: leardi, loft, trovit, temporadalivre, airbnb, altitudeimoveis, wimoveis, luxuryproperties, camposdojordaocultura e imoveisglobal.

### Outros domínios
- **imoveisemcamposdojordao.net (BR):** 50 palavras orgânicas, 25 delas no top 3, tráfego estimado de **233/mês** e valor de US$ 8,02/mês. As principais palavras são "imoveis campos do jordão" (posição 1, tráfego 45), "imoveis em campos do jordão" (posição 1, tráfego 18), "terreno campos do jordão" (posição 1, tráfego 17) e "casas a venda em campos do jordão" (posição 2, tráfego 17). As principais páginas são `/` (56), `/casas` (55), `/terrenos` (36) e `/Busca` (30).
- **imoveisemcamposdojordao.com.br:** **sem dados** (0 palavras, 0 páginas, tráfego 0).

### Rank Tracker
- Há 3 projetos na conta: 10408012 (imoveisemcamposdojordao.com/), 10408013 (imoveisemcamposdojordao.net/) e 10408014 (www.imoveisemcamposdojordao.com/). **Os três têm keyword_count = 0**, ou seja, não há palavras acompanhadas no Rank Tracker.
- No projeto 10408012, `management-project-keywords` e `rank-tracker-overview` voltaram vazios. Por isso não há lista de posições acompanhadas para salvar.

---

## 3. O que falhou ou ficou limitado
- **Limite de 250 linhas por chamada:** a API via MCP devolve no máximo 250 linhas, mesmo com `limit=1000`. Para domínios de referência e backlinks, paginei por data (`first_seen` / `first_seen_link`) e removi as duplicatas. Os domínios de referência ficaram em 840 de 842 vivos. Os backlinks ficaram em 849 grupos (agrupamento padrão "similar_links"), não nos 1.485 links individuais.
- **Page Explorer sem coluna de issues:** a API não tem uma coluna "issues". O CSV `site-audit-page-explorer-urls-com-erros.csv` foi montado consultando cada issue de nível Error com ocorrência e juntando os resultados por URL (a coluna `issues` lista os nomes). O total, 202 URLs, bate com `urls_with_errors`.
- **Organic keywords sem CSV:** esse endpoint só aceita JSON. O JSON é o dado bruto, e o CSV foi gerado a partir dele.
- **Concorrentes orgânicos:** pedi até 100 e a API devolveu 20.
- **imoveisemcamposdojordao.com.br:** sem dados orgânicos.
- **Rank Tracker:** nenhuma palavra acompanhada em nenhum projeto.
- **Backlinks quebrados:** 0 resultados. Não é um erro, a API simplesmente não retornou nenhum.
- **Métricas BR e sem país:** vieram idênticas (44 palavras, tráfego 198).
- Nenhuma ferramenta `render-*` foi usada e nenhum commit foi feito.
