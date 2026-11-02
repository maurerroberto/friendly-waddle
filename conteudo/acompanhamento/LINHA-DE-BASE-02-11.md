# Linha de base de posições — imoveisemcamposdojordao.com — 02/11/2026

Objetivo: chegar ao 1º lugar no Google Brasil nas buscas imobiliárias de Campos do Jordão. Esta é a foto de partida das **40 palavras-alvo** e da página do site que deve ranquear para cada uma. Os dados por palavra estão em `LINHA-DE-BASE-02-11.csv`. Os arquivos brutos da Semrush estão em `semrush/`.

## 1. De onde vêm os números (e o que não foi possível coletar hoje)

| Fonte | O que mede | Período / data | Situação em 02/11 |
|---|---|---|---|
| **Semrush Position Tracking**, projeto 31372806, campanha `31372806_5543512` | Posição diária de 131 palavras. Google, **computador**, localização **cidade de Campos do Jordão** | 26/09 a 02/11/2026 (38 coletas) | **Exportado**: as 131 palavras com histórico diário, URL e tipo de resultado. Também saiu uma segunda versão **só orgânica** (sem AI Overview, sem pacote do mapa e sem hotéis) de 26/10 a 02/11 |
| Semrush Position Tracking, projeto 31393522 (.net), campanha `31393522_5585167` | 5 palavras, Google Brasil, computador | 03/10 a 02/11 | Só os dados da campanha. **As posições não foram exportadas**: o saldo de unidades da API da Semrush **zerou** durante a coleta |
| Semrush, concorrentes do tracking | Domínios no top 100 das 131 palavras | — | **Não exportado** (erro "unable to charge units": saldo zerado). Há 913 domínios no relatório |
| Semrush organic_research (base br) | Todas as palavras e páginas do domínio | — | **Não exportado**: erro "API UNITS BALANCE IS ZERO" |
| **Ahrefs** (site-audit-projects, site-audit-issues, gsc-keywords 28 dias, serp-overview, subscription-info, management-projects) | Crawl novo, comparação com 26/10, GSC dos últimos 28 dias, SERPs | — | **Nenhuma chamada funcionou**: todas devolveram HTTP 400 "Insufficient plan". A API da Ahrefs não está liberada no plano atual, então **não há crawl novo nem comparação com 26/10** |
| GSC visto pela Ahrefs (exportado em 29/10, já no repositório) | Posição média, impressões e cliques por consulta. Brasil e todos os aparelhos | 90 dias: **29/07 a 27/10/2026** | Usado na coluna GSC. **Não são os 28 dias pedidos**: é o último dado real disponível |
| Ahrefs Site Explorer, palavras orgânicas BR (exportado em 29/10) | Melhor posição estimada pela Ahrefs | 29/10/2026 | Usado na coluna Ahrefs. A Ahrefs só lista 44 palavras para o domínio. "não listada" = a palavra não está entre elas |
| Ahrefs serp-overview (exportado em 29/10, já no repositório) | Quem está em 1º no orgânico | SERPs de set./out. de 2026. Em várias linhas a data não foi gravada ("col. 29/10") | Usado na coluna "1º orgânico". SERP de 2024 ou anterior foi descartada |

### Como ler as colunas da Semrush
- **"com IA/mapa"** é a posição que o painel da Semrush mostra por padrão. Ela conta como posição 1 a **citação no AI Overview** (tipo `aio`) e a posição no **pacote do mapa** (tipo `geo`). Isso varia muito de um dia para o outro. Exemplo: "casa em campos do jordão" estava em 24 em 29/10 e em 1 em 02/11.
- **"só orgânico"** é a posição entre os links azuis, com `linktype_filter=537395202`. Ela é a régua para o objetivo "1º lugar". Uso a **mediana dos últimos 7 dias** porque a posição diária oscila. Exemplo: "casa a venda campos do jordao" ficou em 66 só em 02/11, com mediana de 7.
- A Semrush mede do **computador** e a partir da **cidade de Campos do Jordão**. O GSC é a média de **todo o Brasil e todos os aparelhos**, e a maioria de quem busca está fora da cidade. Por isso os dois números podem divergir bastante. O GSC é a fonte oficial. A Semrush serve para ver a tendência diária.
- **Distância ao 1º** = mediana só orgânica da Semrush menos 1 · posição média do GSC menos 1. Zero significa já estar em 1º.

## 2. Quadro geral do Position Tracking (131 palavras da campanha .com)

| Data | Em 1º | Top 3 | Top 10 | Top 20 | Ranqueando (top 100) |
|---|---|---|---|---|---|
| 27/09, com IA/mapa (primeira coleta completa) | 6 | 23 | 74 | 100 | 114 |
| 26/10, com IA/mapa | 18 | 42 | 69 | 101 | 113 |
| 02/11, com IA/mapa | 34 | 56 | 86 | 98 | 111 |
| 26/10, só orgânico | 5 | 20 | 60 | 97 | 113 |
| **02/11, só orgânico (linha de base)** | **6** | **17** | **70** | **93** | **111** |

O salto de 18 para 34 palavras "em 1º" entre 26/10 e 02/11 vem quase todo das **citações no AI Overview**. No orgânico puro, o site tem 6 palavras em 1º e 70 no top 10.

Nas 40 palavras-alvo, 29 estão no tracking. Pela mediana só orgânica de 7 dias, 2 estão em 1º, 5 no top 3 e 17 no top 10. No GSC (90 dias), 37 têm dado: 1 no top 3, 5 no top 5 e 23 no top 10.

## 3. As 40 palavras-alvo

Negrito na coluna de URL = o Google mostra uma página **diferente** da página-alvo.

| # | Palavra | Página-alvo | Vol. BR (Ahrefs) | GSC pos. média 90d (impr.) | Semrush 02/11 com IA/mapa | Semrush só orgânico 02/11 · mediana 7d | URL que o Semrush vê | Ahrefs 29/10 | 1º orgânico na SERP Ahrefs (data) | Distância ao 1º (Semrush · GSC) |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | casa a venda em campos do jordão | `/imoveis/a-venda/casa` | 350 | 8,5 (383) | 1 (aio) | 6 · 7 | /imoveis/a-venda/casa | 8 (org.) | domaniimoveis.com.br (#2); nós: 8 (col. 29/10) | 6 · 7,5 |
| 2 | casas a venda em campos do jordão | `/imoveis/a-venda/casa` | 350 | 8,77 (342) | 1 (aio) | 3 · 6 | /imoveis/a-venda/casa | 8 (org.) | olx.com.br (#1); nós: 8 (col. 29/10) | 5 · 7,8 |
| 3 | casa a venda campos do jordao | `/imoveis/a-venda/casa` | 250 | 8,72 (295) | 2 (aio) | 66 · 7 | /imoveis/a-venda/casa | 7 (IA) | olx.com.br (#1); nós: 8 (col. 29/10) | 6 · 7,7 |
| 4 | casas a venda campos do jordão | `/imoveis/a-venda/casa` | 250 | 9,14 (170) | 1 (aio) | 5 · 5 | /imoveis/a-venda/casa | 2 (IA) | olx.com.br (#1); nós: 8 (col. 29/10) | 4 · 8,1 |
| 5 | casa em campos do jordão | `/imoveis/a-venda/casa` | 200 | 8,23 (126) | 1 (aio) | 1 · 20 | /imoveis/a-venda/casa | 11 (org.) | domaniimoveis.com.br (#2); nós: fora do top 10 (col. 29/10) | 19 · 7,2 |
| 6 | casas em campos do jordão | `/imoveis/a-venda/casa` | 250 | 9,87 (138) | 1 (aio) | 1 · 8 | /imoveis/a-venda/casa | 10 (org.) | domaniimoveis.com.br (#2); nós: 10 (col. 29/10) | 7 · 8,9 |
| 7 | casa em campos do jordao | `/imoveis/a-venda/casa` | 500 | 10,0 (61) | 2 (aio) | 7 · 3 | /imoveis/a-venda/casa | não listada | vivareal.com.br (#1); nós: fora do top 10 (col. 29/10) | 2 · 9,0 |
| 8 | casa campos do jordao | `/imoveis/a-venda/casa` | 350 | 10,26 (31) | 1 (aio) | 8 · 8 | /imoveis/a-venda/casa | não listada | imovelweb.com.br (#2); nós: fora do top 10 (col. 29/10) | 7 · 9,3 |
| 9 | casas campos do jordão | `/imoveis/a-venda/casa` | 250 | 9,53 (86) | 6 (org) | 5 · 1 | /imoveis/a-venda/casa | não listada | leardi.com.br (#2); nós: fora do top 10 (col. 29/10) | 0 · 8,5 |
| 10 | casas baratas à venda em campos do jordão | `/imoveis/a-venda/casa` | 150 | 29,25 (4) | 11 (org) | 10 · 9 | /imoveis/a-venda/casa | não listada | imovelweb.com.br (#2); nós: fora do top 10 (col. 29/10) | 8 · 28,2 |
| 11 | terreno campos do jordão | `/imoveis/a-venda/terreno` | 250 | 9,45 (177) | 1 (aio) | 4 · 5 | /imoveis/a-venda/terreno | 6 (org.) | olx.com.br (#2); nós: 6 (col. 29/10) | 4 · 8,4 |
| 12 | terreno em campos do jordão | `/imoveis/a-venda/terreno` | 90 | 8,8 (74) | 1 (aio) | 17 · 5 | /imoveis/a-venda/terreno | 5 (org.) | imovelweb.com.br (#1); nós: 5 (16/10) | 4 · 7,8 |
| 13 | terreno a venda em campos do jordão | `/imoveis/a-venda/terreno` | 50 | 7,57 (53) | não acompanhada | — | — | 4 (IA) | sem SERP no Ahrefs | — · 6,6 |
| 14 | terrenos em campos do jordão | `/imoveis/a-venda/terreno` | 60 | 8,61 (66) | não acompanhada | — | — | 8 (org.) | sem SERP no Ahrefs | — · 7,6 |
| 15 | apartamento campos do jordão | `/imoveis/a-venda/apartamento` | 250 | 12,44 (18) | 21 (org) | 17 · 15 | **/imoveis/campos-do-jordao/vila-capivari** | não listada | domaniimoveis.com.br (#1); nós: fora do top 10 (col. 29/10) | 14 · 11,4 |
| 16 | apartamento em campos do jordão | `/imoveis/a-venda/apartamento` | 200 | 12,53 (15) | 17 (org) | 13 · 18 | **/imoveis/campos-do-jordao/vila-capivari** | não listada | domaniimoveis.com.br (#2); nós: fora do top 10 (col. 29/10) | 17 · 11,5 |
| 17 | apartamento a venda em campos do jordão | `/imoveis/a-venda/apartamento` | 150 | 8,96 (144) | 6 (aio) | 8 · 8 | /imoveis/a-venda/apartamento | não listada | zapimoveis.com.br (#1); nós: fora do top 10 (col. 29/10) | 7 · 8,0 |
| 18 | apartamentos a venda em campos do jordão | `/imoveis/a-venda/apartamento` | 50 | 7,91 (88) | não acompanhada | — | — | 7 (org.) | sem SERP no Ahrefs | — · 6,9 |
| 19 | aluguel campos do jordão | `/imoveis/para-alugar` | 250 | 10,64 (283) | 20 (org) | 19 · 7 | **/imoveis/para-alugar/apartamento** | 6 (IA) | vivareal.com.br (#1); nós: 9 (col. 29/10) | 6 · 9,6 |
| 20 | aluguel em campos do jordão | `/imoveis/para-alugar` | 150 | 12,28 (151) | 24 (org) | 17 · 12 | **/imoveis/para-alugar/apartamento** | 1 (IA) | sem SERP no Ahrefs | 11 · 11,3 |
| 21 | casa para alugar em campos do jordão | `/imoveis/para-alugar/casa` | 250 | 12,29 (98) | 14 (org) | 13 · 15 | **/** | não listada | sem SERP no Ahrefs | 14 · 11,3 |
| 22 | casa para alugar campos do jordão | `/imoveis/para-alugar/casa` | 100 | 13,76 (50) | 13 (org) | 12 · 27 | **/** | não listada | sem SERP no Ahrefs | 26 · 12,8 |
| 23 | casas para alugar em campos do jordão | `/imoveis/para-alugar/casa` | 200 | 24,12 (16) | 12 (org) | 11 · 2 | **/imoveis/para-alugar** | não listada | sem SERP no Ahrefs | 1 · 23,1 |
| 24 | casas para alugar mensal em campos do jordão | `/imoveis/para-alugar/casa` | 100 | 11,79 (14) | 32 (org) | 31 · 31 | **/imoveis/para-alugar** | não listada | sem SERP no Ahrefs | 30 · 10,8 |
| 25 | apartamento para alugar em campos do jordão | `/imoveis/para-alugar/apartamento` | 70 | 10,26 (61) | não acompanhada | — | — | não listada | sem SERP no Ahrefs | — · 9,3 |
| 26 | imobiliária campos do jordão | `/` | 100 | 4,71 (354) | 2 (geo) | 6 · 22 | **http:// (home)** | não listada | instagram.com/imoveiscamposdojordao (#2); nós: fora do top 10 (28/10, SERP de "imobiliaria em campos do jordão") | 21 · 3,7 |
| 27 | imobiliarias em campos do jordão | `/` | — | 6,87 (331) | 7 (org) | 4 · 1 | / | não listada | sem SERP no Ahrefs | 0 · 5,9 |
| 28 | imoveis campos do jordão | `/` | 150 | 4,18 (387) | 3 (aio) | 75 · 75 | / | não listada | marcomuratori.com.br (#2); nós: fora do top 10 (col. 29/10) | 74 · 3,2 |
| 29 | imóveis em campos do jordão | `/` | 40 | 3,42 (80) | 2 (org) | 2 · 2 | / | não listada | portal.kenlo.com.br (#2); nós: fora do top 10 (26/09) | 1 · 2,4 |
| 30 | imoveis em campos do jordao | `/` | 150 | 2,58 (533) | 1 (aio) | 2 · 18 | / | não listada | imoveisemcamposdojordao.net (#1); nós: fora do top 10 (col. 29/10) | 17 · 1,6 |
| 31 | imoveis a venda em campos do jordão | `/` | 90 | 4,38 (186) | 1 (aio) | 7 · 4 | / | 1 (IA) | vivareal.com.br (#2); nós: 6 (col. 29/10) | 3 · 3,4 |
| 32 | pousada a venda em campos do jordão | `/imoveis/a-venda/hotel` | 50 | 9,5 (22) | 2 (aio) | 24 · 20 | /imoveis/a-venda/hotel | 10 (org.) | sem SERP no Ahrefs | 19 · 8,5 |
| 33 | mansões em campos do jordão | `/imoveis-de-alto-padrao-em-campos-do-jordao` | 70 | sem dado | não acompanhada | — | — | não listada | luxuryestate.com (#2); nós: fora do top 10 (12/10) | — · — |
| 34 | condomínio campos do jordão | `(a criar: página de condomínios, C2)` | 100 | 71,0 (1) | não acompanhada | — | — | não listada | jbaimoveis.com.br (#2); nós: fora do top 10 (col. 29/10) | — · 70,0 |
| 35 | condominio iporanga campos do jordão | `/imoveis/campos-do-jordao/iporanga` | 80 | 14,47 (30) | não acompanhada | — | — | não listada | SERP de 08/01/2024 (velha, não usada) | — · 13,5 |
| 36 | condominio veu da noiva campos do jordao | `/imoveis/campos-do-jordao/jardim-veu-da-noiva` | 40 | 5,73 (107) | 15 (org) | 13 · 20 | **/imoveis/campos-do-jordao/residencial-veu-da-noiva** | não listada | sem SERP no Ahrefs | 19 · 4,7 |
| 37 | abernessia imoveis | `/imoveis/campos-do-jordao/abernessia` | — | 5,77 (70) | não acompanhada | — | — | 5 (org.) | sem SERP no Ahrefs | — · 4,8 |
| 38 | terreno santo antonio do pinhal | `/imoveis/a-venda/terreno/santo-antonio-do-pinhal` | 100 | 33,5 (2) | não acompanhada | — | — | não listada | sem SERP no Ahrefs | — · 32,5 |
| 39 | casa para alugar em santo antônio do pinhal | `/imoveis/santo-antonio-do-pinhal` | 100 | sem dado | não acompanhada | — | — | não listada | sem SERP no Ahrefs | — · — |
| 40 | casa para alugar em são bento do sapucaí | `/imoveis/sao-bento-do-sapucai` | 150 | sem dado | não acompanhada | — | — | não listada | sem SERP no Ahrefs | — · — |

## 4. Leitura

1. **Casas à venda (1 a 10). É o grupo mais perto do 1º.** A página `/imoveis/a-venda/casa` é a que o Google mostra em todas as variantes. No orgânico, a mediana da Semrush fica entre 3 e 9 na maioria das variantes, e o GSC entre 8,2 e 10,3. Em 1º estão portais (OLX, VivaReal, ImovelWeb) e a Domani, que tem DR 0. Faltam de 2 a 8 posições. O AI Overview já cita a página em quase todas elas. Exceções: "casas campos do jordão" já tem mediana 1 no orgânico da Semrush (GSC 9,5), e "casa em campos do jordão" oscila muito (mediana 20, GSC 8,2). "casas baratas à venda" está em 29 no GSC.
2. **Terrenos (11 a 14).** `/imoveis/a-venda/terreno` fica em 5 no orgânico da Semrush e em 7,6 a 9,5 no GSC. Em 1º estão OLX e ImovelWeb. Faltam cerca de 4 posições. Duas variantes ("terreno a venda em…" e "terrenos em…") não estão no tracking.
3. **Apartamentos (15 a 18). O Google escolhe a página errada.** Para "apartamento campos do jordão" e "apartamento em campos do jordão", a Semrush mostra a página do bairro `/imoveis/campos-do-jordao/vila-capivari` em vez de `/imoveis/a-venda/apartamento`. A mediana é 15 a 18, e o GSC registra 12,4 a 12,5 com só 15 a 18 impressões. Em 1º está a Domani. Só "apartamento a venda em…" usa a página certa (8 na Semrush, 9,0 no GSC).
4. **Aluguel (19 a 25). É a maior distância nas palavras de volume.** Nenhuma variante usa `/imoveis/para-alugar/casa`. O Google mostra a home, `/imoveis/para-alugar` ou `/imoveis/para-alugar/apartamento`. As medianas vão de 2 a 31 ("casas para alugar em…" já está em 2 na Semrush, mas em 24,1 no GSC), e o GSC fica entre 10,3 e 24,1. Só há SERP da Ahrefs para "aluguel campos do jordão", onde a VivaReal está em 1º. "casas para alugar mensal…" está em 31, porque não há página de locação mensal (B3 do plano). O pico é em janeiro, então esta é a frente mais urgente.
5. **Marca e genéricas (26 a 31). O GSC já é bom (2,6 a 6,9), mas há dois problemas:**
   - Em "imobiliária campos do jordão" e "imoveis a venda em campos do jordão", a URL que aparece é a **home em http** (`http://www…/`), o mesmo problema da ação A3 do plano. No orgânico puro da Semrush, "imobiliária campos do jordão" fica em 22. O site só aparece em 2 por causa do **pacote do mapa**.
   - Em "imoveis em campos do jordao", o **.net** é o 1º orgânico na SERP da Ahrefs, e o .com fica com mediana 18 no orgânico da Semrush (GSC 2,6). Os dois domínios disputam a mesma busca (A7 do plano).
   - "imoveis campos do jordão" tem mediana 75 no orgânico da Semrush, contra 4,2 no GSC e 3 com IA/mapa. A diferença é grande demais e precisa ser conferida no painel antes de tirar qualquer conclusão.
6. **Nichos, bairros e região (32 a 40). São os que menos aparecem.** Das 9 palavras, 7 não estão no tracking. Pousada: `/imoveis/a-venda/hotel` fica em 20 no orgânico e em 9,5 no GSC. Véu da Noiva: o GSC usa `/jardim-veu-da-noiva` (5,7) e a Semrush usa `/residencial-veu-da-noiva` (20), ou seja, duas páginas disputam a mesma busca. Iporanga: 14,5 no GSC. Terreno em Santo Antônio do Pinhal: 33,5, com 2 impressões. Aluguel em Santo Antônio do Pinhal e em São Bento do Sapucaí: nenhuma impressão no GSC em 90 dias. Mansões: sem dado, e o 1º é o luxuryestate.com. "condomínio campos do jordão" não tem página própria (71 no GSC).

### Onde o 1º está mais perto (distância pequena e volume alto)
- "casas a venda campos do jordão" (250): orgânico 5, faltam 4.
- "terreno campos do jordão" (250) e "terreno em campos do jordão" (90): orgânico 5, faltam 4.
- "casas a venda em campos do jordão" (350): orgânico 6, faltam 5.
- "casa a venda em campos do jordão" (350) e "casa a venda campos do jordao" (250): orgânico 7, faltam 6.
- "imoveis a venda em campos do jordão" (90): orgânico 4, faltam 3, mas a home precisa sair do http.
- "casa em campos do jordao" (500, a de maior volume): orgânico 3, faltam 2. O GSC registra 10,0, e às vezes o Google mostra a home em vez da categoria.
- "casas para alugar em campos do jordão" (200): orgânico 2 na Semrush, mas 24,1 no GSC. A mesma busca vista do resto do Brasil está longe.
- "imobiliarias em campos do jordão": orgânico 1 na Semrush, 6,9 no GSC.

### Onde está mais longe
- Aluguel: "casa para alugar…" está entre 15 e 27, e "mensal" em 31.
- Apartamento em "apartamento (em) campos do jordão": 15 a 18, porque o Google escolhe a página errada.
- Região: Santo Antônio do Pinhal e São Bento do Sapucaí, sem presença.

## 5. O que esta linha de base não tem (e por quê)
- **Crawl novo da Ahrefs e comparação com 26/10:** a API da Ahrefs devolveu "Insufficient plan" em todas as ferramentas, inclusive `subscription-info`. O último resumo salvo continua sendo o de 26/10: saúde 91, 2.241 URLs, 202 com erro, 1.740 com aviso (`ahrefs-export/site-audit-projects.json`).
- **GSC dos últimos 28 dias:** pelo mesmo motivo, não foi coletado. A coluna GSC usa os 90 dias de 29/07 a 27/10. Para a próxima comparação, exportar direto do Search Console (veja `COMO-ACOMPANHAR.md`).
- **Semrush organic_research (até 500 palavras e as páginas) e concorrentes do tracking:** não saíram, porque o saldo de unidades da API da Semrush zerou nesta coleta. Cada página de 50 palavras com 38 dias de histórico custou 5.000 a 8.100 unidades, e a versão só orgânica custou 13.100.
- **Posições do .net no tracking:** não saíram pelo mesmo motivo.
- **1º lugar atualizado (SERP de hoje):** as SERPs são da coleta da Ahrefs de set./out. Para 16 palavras não há SERP na Ahrefs, e para mais 1 (Iporanga) a SERP é de 2024.
