# Pesquisa de palavras-chave imobiliárias de Campos do Jordão (Ahrefs, Brasil)

Data da coleta: 29/10/2026. Fonte: API Ahrefs v3 (Keywords Explorer, SERP Overview, Content Helper). País: BR. Volumes são médias mensais dos últimos 12 meses, como o Ahrefs os estima. KD é a dificuldade de 0 a 100. Os CSVs brutos de cada consulta estão nesta pasta (lista no final).

## 1. Resumo dos achados

1. **A demanda é pequena e muito espalhada em variantes.** Nenhuma palavra imobiliária de Campos do Jordão passa de 500 buscas/mês. A maior é "casa em campos do jordao" (500, sem acento). O Ahrefs conta separadamente "casa a venda em campos do jordão" (350), "casas a venda em campos do jordão" (350), "casa a venda campos do jordao" (250) e assim por diante. Somando o cluster inteiro:

| Cluster (palavras classificadas como imobiliárias, CJ e região) | Nº de palavras | Volume somado/mês |
|---|---|---|
| Aluguel residencial em CJ (inclui 90 de "casa para alugar no jordão", que provavelmente se refere a outro lugar) | 166 | 2.760 |
| Casas à venda (casa/casas + venda/comprar) | 110 | 2.610 |
| Casa(s) em CJ, genérico, sem "venda" | 37 | 2.200 |
| Santo Antônio do Pinhal (compra + aluguel + temporada) | 73 | 1.820 |
| São Bento do Sapucaí (compra + aluguel + temporada) | 59 | 1.290 |
| Apartamentos | 65 | 1.120 |
| Imóveis/imobiliária (genérico) | 69 | 950 |
| Terrenos/lotes | 50 | 710 |
| Condomínios | 174 | 550 |
| Temporada (aluguel por temporada) | 53 | 540 |
| Leilão | 13 | 320 |
| Marcas e portais (navegacional, ex.: "euro imoveis campos do jordão", "leandro imóveis") | 84 | 280 |
| Alto padrão/mansão/luxo | 13 | 230 |
| Chácara/sítio/fazenda | 10 | 190 |
| Chalé/pousada/hotel à venda | 9 | 140 |

2. **As grafias com crase e acento das sementes quase não têm volume no Ahrefs.** "casa à venda campos do jordão", "casa em condomínio campos do jordão", "chácara campos do jordão" e "pousada à venda campos do jordão" aparecem com 0. As formas que as pessoas digitam são "casa a venda…", "condominio…", "chacara em…" e "pousada a venda em…". O texto pode continuar com a grafia correta; o que muda é que o título e o H1 precisam cobrir a forma que é buscada ("Casas à venda em Campos do Jordão" já cobre "casas a venda em campos do jordão", porque o Google ignora o acento; o Ahrefs só mede as formas em separado).
3. **KD é 0 em quase tudo** (exceções: "imoveis em campos do jordão" KD 55, "imoveis a venda em campos do jordão" KD 43, "imobiliaria em campos do jordão" KD 26). O top 3 mistura portais de DR 68–76 (OLX, ZAP, Viva Real, Imovelweb) com imobiliárias locais de **DR 0–24** (Domani DR 0, Capivari Imóveis DR 24). Quem é forte aqui é a página de listagem relevante, não a autoridade do domínio.
4. **Nosso site (imoveisemcamposdojordao.com) aparece entre a 5ª e a 10ª posição** nas SERPs de casas e terrenos (/imoveis/a-venda/casa em 7–10; /imoveis/a-venda/terreno em 5–7). Não aparece no top 10 de apartamento, nem nas variantes "casa em campos do jordão/jordao". O domínio **imoveisemcamposdojordao.net** (que é outro projeto na mesma conta Ahrefs) é o nº 1 em "imoveis em campos do jordao" e o nº 3 em "imoveis campos do jordão".
5. **Busca de bairro com intenção de compra praticamente não existe no Ahrefs.** Todas as combinações "casa a venda <bairro> campos do jordão" e "terreno <bairro> campos do jordão" vieram com 0 ou sem dado. O volume dos bairros está no nome puro (Capivari 1.500, Vila Capivari 1.100, Vila Inglesa 400, Abernéssia 200, Alto da Boa Vista 150, Alto do Capivari 100), que tem intenção turística. Condomínios têm alguma busca: Iporanga (80 + 20 + 20 + 10), Vila Holandesa (40), Véu da Noiva (40 + 10), Villa Real (30 + 10 + 10).
6. **Sazonalidade:** a compra de casas tem pico em **maio**, com abril a julho acima da média. Terreno tem pico em **julho**, com abril a agosto altos. Aluguel residencial tem pico em **janeiro** e **maio**. O período mais fraco para compra é outubro e novembro.
7. **Chalé é turismo, não compra.** "chalés em campos do jordão" (3.700), "chalé campos do jordão" (2.800) e "airbnb campos do jordão" (3.100) são buscas de hospedagem. "chalé a venda em campos do jordão" tem só 30.

### Ressalvas sobre os dados
- Volumes abaixo de 100 são arredondados pelo Ahrefs (10, 20, 30…). Muitas palavras de cauda longa têm `difficulty`/`traffic_potential` nulos, porque o Ahrefs não tem SERP coletada para elas.
- Em "casas a venda em campos do jordão", o histórico mensal de 2024, 2025 e 2026 se repete quase igual mês a mês. Isso indica um volume modelado pelo Ahrefs, não medido, então a sazonalidade dessa palavra deve ser lida com cautela.
- Algumas SERPs no Ahrefs são antigas: "imobiliária campos do jordão" é de **16/04/2017**, "condominio iporanga campos do jordão" de 08/01/2024 e "apartamento a venda campos do jordão" de 19/02/2024. Para "imobiliária", usei também a SERP de "imobiliaria em campos do jordão" (28/10/2026).
- `refdomains` na SERP é contado **por página** (URL), não por domínio. As listagens dos portais aparecem com 0 domínios de referência por página.

## 2. Sementes (keywords-explorer-overview)

| Semente | Volume | KD | CPC (US$) | Tráfego potencial | Parent topic (volume) |
|---|---|---|---|---|---|
| chalé campos do jordão | 2.800 | 0 | 0,15 | 1.900 | chalés em campos do jordão (3.600) |
| apartamento campos do jordão | 250 | 0 | 0,04 | 150 | apartamento em campos do jordão (200) |
| terreno campos do jordão | 250 | 0 | 0,03 | 200 | terreno em campos do jordão (90) |
| aluguel campos do jordão | 250 | 0 | 0,03 | 200 | aluguel campos do jordão (250) |
| imobiliária campos do jordão | 100 | — | — | — | — |
| aluguel temporada campos do jordão | 80 | 0 | 0,10 | 1.900 | airbnb campos do jordão (3.100) |
| mansão campos do jordão | 60 | 0 | 0,04 | 20 | mansão em campos do jordão (60) |
| casas à venda em campos do jordão | 40 | 0 | 0,05 | 1.000 | casas a venda em campos do jordão (350) |
| imóveis campos do jordão (com acento) | 10 | — | 0,06 | — | — (a forma "imoveis campos do jordão" tem 150) |
| flat campos do jordão | 10 | — | 0,15 | — | — |
| casa à venda campos do jordão | 0 | — | — | — | (a forma "casa a venda em campos do jordão" tem 350) |
| casa em condomínio campos do jordão | 0 | — | — | — | ("casa condominio campos do jordao" tem 30) |
| chácara campos do jordão | 0 | — | — | — | ("chacara em campos do jordão" tem 30) |
| pousada à venda campos do jordão | 0 | — | — | — | ("pousada a venda em campos do jordão" tem 50) |
| são bento do sapucaí imóveis | 0 | — | — | — | ("imoveis sao bento do sapucai" tem 20; "casa para alugar em são bento do sapucaí" tem 150) |
| imóveis de luxo campos do jordão | sem dado | | | | ("casas de luxo em campos do jordão" tem 10) |
| santo antônio do pinhal imóveis | sem dado | | | | ("imoveis santo antonio do pinhal" tem 70) |

Depois das sementes, rodei matching-terms (casa venda, casas, apartamento, terreno, imóveis, aluguel, alugar, condomínio, chácara/sítio/fazenda/lote, imobiliária/corretor, chalé/pousada/hotel à venda/flat/luxo/mansão, Santo Antônio do Pinhal e São Bento do Sapucaí, e "campos do jordão" e "campos do jordao" com filtro de termos imobiliários), related-terms e search-suggestions (5 a 6 sementes principais). No total, **2.057 palavras únicas** estão em `MASTER-todas-palavras-classificadas.csv`, e 986 delas foram classificadas como imobiliárias.

## 3. Top 100 palavras por volume (imobiliárias, CJ e região)

Fonte: `overview-top-palavras-sazonalidade-24m.csv` (intenção do Ahrefs, histórico de 24 meses de 10/2024 a 09/2026). "Meses de pico" são os 3 meses de maior média no período. Abreviações de intenção: info = informacional, com = comercial, trans = transacional, nav = navegacional. A coluna "Página ideal" é a recomendação deste estudo, feita a partir da intenção e da SERP.

| # | Palavra | Vol. BR | KD | Intenção (Ahrefs) | Tipo | Meses de pico | Página ideal |
|---|---|---|---|---|---|---|---|
| 1 | casa em campos do jordao | 500 | 0 | info/com/trans/local | compra | mai/jun/abr | categoria casas à venda |
| 2 | casa a venda em campos do jordão | 350 | 0 | info/com/trans/local | compra | jan/mar/jul | categoria casas à venda |
| 3 | casa campos do jordao | 350 | 0 | info/com/trans/local | compra | mai/abr/jun | categoria casas à venda |
| 4 | casas a venda em campos do jordão | 350 | 0 | info/com/trans/local | compra | abr/jun/mar | categoria casas à venda |
| 5 | apartamento campos do jordão | 250 | 0 | info/com/trans/local | compra | mai/jun/abr | categoria apartamentos à venda |
| 6 | terreno campos do jordão | 250 | 0 | info/com/trans/local | compra | mai/jun/abr | categoria terrenos |
| 7 | casas campos do jordão | 250 | 0 | info/com/trans/local | compra | mai/jun/abr | categoria casas à venda |
| 8 | casas a venda campos do jordão | 250 | 0 | com/trans/local | compra | jan/mai/jul | categoria casas à venda |
| 9 | casas em campos do jordão | 250 | 0 | info/com/trans/local | compra | mai/jun/abr | categoria casas à venda |
| 10 | casa a venda campos do jordao | 250 | 0 | com/trans/local | compra | mai/mar/jan | categoria casas à venda |
| 11 | aluguel campos do jordão | 250 | 0 | info/com/trans/local | aluguel | mai/jan/mar | categoria locação (imóveis para alugar) |
| 12 | casa para alugar em campos do jordão | 250 | 0 | info/com/trans/local | aluguel | mai/abr/mar | categoria locação (imóveis para alugar) |
| 13 | casa em campos do jordão | 200 | 0 | info/com/trans/local | compra | mai/abr/jun | categoria casas à venda |
| 14 | casas para alugar em campos do jordão | 200 | 0 | info/com/trans/local | aluguel | mai/jun/jul | categoria locação (imóveis para alugar) |
| 15 | casa campos do jordão | 200 | 0 | info/com/trans/local | compra | mai/jun/abr | categoria casas à venda |
| 16 | apartamento em campos do jordão | 200 | 0 | info/com/trans/local | compra | mai/jun/abr | categoria apartamentos à venda |
| 17 | casas baratas à venda em campos do jordão | 150 | 0 | info/com/trans/local | compra | jan/mar/fev | nova página (casas baratas / faixa de preço) |
| 18 | casa a venda em campos do jordao | 150 | 0 | com/trans/local | compra | mai/mar/jun | categoria casas à venda |
| 19 | casas para alugar em campos do jordão baratas | 150 | 0 | info/com/trans/local | aluguel | jan/mai/out | categoria locação (imóveis para alugar) |
| 20 | apartamento a venda em campos do jordão | 150 | 0 | info/com/trans/local | compra | jan/abr/mai | categoria apartamentos à venda |
| 21 | aluguel em campos do jordão | 150 | 0 | info/com/trans/local | aluguel | jan/mai/mar | categoria locação (imóveis para alugar) |
| 22 | casa para alugar em são bento do sapucaí | 150 | 0 | info/com/trans/local | SAP/SBS-aluguel | jan/fev/mar | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 23 | imoveis campos do jordão | 150 | 0 | info/com/trans/local | compra | jan/abr/jul | home |
| 24 | imoveis em campos do jordao | 150 | — | info/com/trans/local | compra | set/mai/jul | home |
| 25 | aluguel temporada campos do jordao | 150 | 0 | info/com/trans/local | temporada | ago/set/mai | nova página (temporada) ou blog |
| 26 | casa venda campos do jordao | 100 | 0 | com/trans/local | compra | mai/jun/abr | categoria casas à venda |
| 27 | casas para alugar campos do jordão | 100 | 0 | info/com/trans/local | aluguel | mai/mar/abr | categoria locação (imóveis para alugar) |
| 28 | casas para alugar mensal em campos do jordão | 100 | 0 | info/com/trans/local | aluguel | jan/mar/nov | nova página (locação anual/mensal) |
| 29 | terreno santo antonio do pinhal | 100 | 0 | info/com/trans/local | SAP/SBS-compra | jul/abr/jun | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 30 | leilão campos do jordão | 100 | 0 | info/com/trans/local | leilao | jun/mar/nov | nova página (leilão de imóveis – conteúdo) |
| 31 | campos do jordão casas a venda | 100 | 0 | info/com/trans/local | compra | mai/jun/jul | categoria casas à venda |
| 32 | casa a venda campos do jordão | 100 | 0 | com/trans/local | compra | jan/jun/mai | categoria casas à venda |
| 33 | casa para alugar campos do jordão | 100 | 0 | info/com/trans/local | aluguel | jan/dez/mar | categoria locação (imóveis para alugar) |
| 34 | imobiliária campos do jordão | 100 | — | info/com/trans/local | compra | jul/ago/jun | home |
| 35 | condomínio campos do jordão | 100 | 0 | info/com/trans/local | compra | mar/abr/jul | nova página (condomínios em Campos do Jordão) |
| 36 | campos do jordão temporada | 100 | 0 | info/com/trans/local | temporada | dez/jan/abr | nova página (temporada) ou blog |
| 37 | campos do jordão casas | 100 | 0 | info/com/trans/local | compra | mai/abr/jun | categoria casas à venda |
| 38 | casa para alugar em santo antônio do pinhal | 100 | 0 | info/com/trans/local | SAP/SBS-aluguel | jan/abr/nov | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 39 | imoveis a venda em campos do jordão | 90 | 43 | info/com/trans/local | compra | mai/jan/fev | home |
| 40 | terreno em campos do jordão | 90 | 0 | info/com/trans/local | compra | mai/jun/abr | categoria terrenos |
| 41 | condominio iporanga campos do jordão | 80 | — | info/nav/com/marca/local | compra | jul/jun/abr | nova página (condomínio) |
| 42 | casas para alugar em santo antônio do pinhal | 80 | 0 | info/com/trans/local | SAP/SBS-aluguel | jan/mar/mai | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 43 | casa em campos do jordão a venda | 80 | — | info/com/trans/local | compra | jul/abr/mai | categoria casas à venda |
| 44 | terreno campos do jordao | 80 | 0 | info/com/trans/local | compra | jul/ago/set | categoria terrenos |
| 45 | apartamento a venda campos do jordão | 80 | — | info/com/trans/local | compra | jul/abr/fev | categoria apartamentos à venda |
| 46 | aluguel temporada campos do jordão | 80 | 0 | info/com/trans/local | temporada | mai/abr/jun | nova página (temporada) ou blog |
| 47 | casas a venda em campos do jordão sp | 80 | 0 | info/com/trans/local | compra | mai/fev/jun | categoria casas à venda |
| 48 | casa em santo antonio do pinhal | 70 | 0 | info/com/trans/local | SAP/SBS-compra | mai/abr/jun | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 49 | apartamento para alugar em campos do jordão | 70 | 0 | info/com/trans/local | aluguel | mai/abr/jun | categoria apartamentos para alugar |
| 50 | imoveis santo antonio do pinhal | 70 | — | info/com/trans/local | SAP/SBS-compra | mai/abr/mar | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 51 | leilao campos do jordao | 70 | 0 | info/com/trans/local | leilao | mai/jun/jul | nova página (leilão de imóveis – conteúdo) |
| 52 | terreno em santo antonio do pinhal | 70 | 0 | info/com/trans/local | SAP/SBS-compra | jul/abr/mai | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 53 | casas a venda em campos do jordao | 70 | 0 | info/com/trans/local | compra | jan/abr/dez | categoria casas à venda |
| 54 | mansões em campos do jordão | 70 | 0 | info/com/trans/local | compra | jul/jun/ago | nova página (alto padrão/mansões) |
| 55 | casa para alugar sao bento do sapucai | 70 | — | info/com/trans/local | SAP/SBS-aluguel | jan/mar/jul | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 56 | casa para alugar em campos do jordao | 70 | 0 | info/com/trans/local | aluguel | mai/abr/jun | categoria locação (imóveis para alugar) |
| 57 | casas em campos do jordão a venda | 60 | — | info/com/trans/local | compra | mai/jul/abr | categoria casas à venda |
| 58 | casas em campos do jordao | 60 | 0 | info/com/trans/local | compra | mai/jul/abr | categoria casas à venda |
| 59 | alta temporada em campos do jordão | 60 | 0 | info | temporada | jul/ago/jun | blog/FAQ (alta temporada) |
| 60 | terreno a venda campos do jordão | 60 | 0 | info/com/trans/local | compra | jan/jul/abr | categoria terrenos |
| 61 | aluguel campos do jordao | 60 | 0 | info/com/trans/local | aluguel | mai/jun/ago | categoria locação (imóveis para alugar) |
| 62 | mansão campos do jordão | 60 | 0 | info/com/trans/local | compra | jun/mai/jul | nova página (alto padrão/mansões) |
| 63 | casas à venda em campos do jordão direto com proprietário | 60 | 0 | info/com/trans/local | compra | jan/out/abr | categoria casas + FAQ (direto com proprietário) |
| 64 | campos do jordao casas | 60 | 0 | info/com/trans/local | compra | set/jul/mai | categoria casas à venda |
| 65 | casas a venda em santo antonio do pinhal | 60 | 0 | com/trans/local | SAP/SBS-compra | dez/mai/jul | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 66 | terrenos em campos do jordão | 60 | 0 | info/com/trans/local | compra | mai/mar/fev | categoria terrenos |
| 67 | campos do jordão aluguel | 60 | 0 | info/com/trans/local | aluguel | jan/jun/mai | categoria locação (imóveis para alugar) |
| 68 | imoveis em campos do jordão | 60 | 55 | info/com/trans/local | compra | abr/dez/mai | home |
| 69 | mansão em campos do jordão | 60 | 0 | info/com/trans/local | compra | dez/mai/jun | nova página (alto padrão/mansões) |
| 70 | imoveis a venda campos do jordão | 50 | — | info/com/trans/local | compra | mai/jan/set | home |
| 71 | aluguel temporada santo antonio do pinhal | 50 | — | info/com/trans/local | SAP/SBS-temporada | out/set/nov | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 72 | casa a venda santo antonio do pinhal | 50 | — | info/com/trans/local | SAP/SBS-compra | fev/jan/mai | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 73 | terreno a venda em campos do jordão | 50 | 0 | com/trans/local | compra | set/abr/mai | categoria terrenos |
| 74 | casa a venda em santo antonio do pinhal | 50 | — | com/trans/local | SAP/SBS-compra | abr/mai/jan | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 75 | casas campos do jordao | 50 | 0 | info/com/trans/local | compra | fev/mai/jun | categoria casas à venda |
| 76 | alta temporada campos do jordão | 50 | 0 | info | temporada | mar/abr/mai | blog/FAQ (alta temporada) |
| 77 | aluguel sao bento do sapucai | 50 | — | info/com/trans/local | SAP/SBS-aluguel | mar/jan/fev | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 78 | pousada a venda em campos do jordão | 50 | 0 | com/trans/local | compra-comercial | mai/jul/ago | categoria pousadas/hotéis à venda |
| 79 | leilao imoveis campos do jordao | 50 | 0 | info/com/trans/local | leilao | fev/mar/jun | nova página (leilão de imóveis – conteúdo) |
| 80 | terreno sao bento do sapucai | 50 | 0 | info/com/trans/local | SAP/SBS-compra | jul/mar/abr | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 81 | aluguel casa campos do jordao | 50 | 0 | info/com/trans/local | aluguel | mar/abr/mai | categoria locação (imóveis para alugar) |
| 82 | casas para alugar anual em são bento do sapucaí | 50 | — | info/com/trans/local | SAP/SBS-aluguel | fev/jan/mar | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 83 | apartamentos a venda em campos do jordão | 50 | 0 | info/com/trans/local | compra | mai/abr/jul | categoria apartamentos à venda |
| 84 | casa para alugar santo antonio do pinhal | 50 | — | info/com/trans/local | SAP/SBS-aluguel | mai/jan/jul | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 85 | campos do jordão casa | 50 | — | info/com/trans/local | compra | mai/jun/abr | categoria casas à venda |
| 86 | terrenos a venda em campos do jordão | 50 | 0 | info/com/trans/local | compra | jan/jul/jun | categoria terrenos |
| 87 | casas a venda campos do jordao | 40 | 0 | info/com/trans/local | compra | jun/mai/jul | categoria casas à venda |
| 88 | temporada em campos do jordão | 40 | 0 | info/com/trans/local | temporada | ago/jan/abr | nova página (temporada) ou blog |
| 89 | apartamento para alugar campos do jordão | 40 | 0 | info/com/trans/local | aluguel | nov/jul/dez | categoria apartamentos para alugar |
| 90 | chacara a venda em santo antonio do pinhal | 40 | 0 | com/trans/local | SAP/SBS-compra | abr/mai/jul | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 91 | casas para alugar em são bento do sapucaí | 40 | — | info/com/trans/local | SAP/SBS-aluguel | jan/mar/abr | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 92 | apartamentos em campos do jordão | 40 | 0 | info/com/trans/local | compra | jul/mai/jun | categoria apartamentos à venda |
| 93 | casa alugar campos do jordao | 40 | — | info/com/trans/local | aluguel | nov/out/dez | categoria locação (imóveis para alugar) |
| 94 | kitnet para alugar em campos do jordão anual | 40 | 0 | info/com/trans/local | aluguel | jan/fev/dez | nova página (locação anual/mensal) |
| 95 | casas para alugar em campos do jordão mensal | 40 | 0 | info/com/trans/local | aluguel | jan/fev/out | nova página (locação anual/mensal) |
| 96 | casa santo antonio do pinhal | 40 | 0 | info/com/trans/local | SAP/SBS-compra | mai/abr/jan | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 97 | casa a venda em campos do jordão sp | 40 | — | info/com/trans/local | compra | mai/jan/fev | categoria casas à venda |
| 98 | aluguel santo antônio do pinhal | 40 | — | info/com/trans/local | SAP/SBS-aluguel | mar/jan/abr | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |
| 99 | casa campos do jordao venda | 40 | — | info/com/trans/local | compra | jun/mai/abr | categoria casas à venda |
| 100 | kitnet para alugar em santo antônio do pinhal | 40 | 0 | info/com/trans/local | SAP/SBS-aluguel | jan/mar/abr | nova página (região: Santo Antônio do Pinhal / São Bento do Sapucaí) |

## 4. Palavras por bairro

Duas consultas: (a) overview de 78 combinações ("casa a venda <bairro> campos do jordão", "terreno <bairro> campos do jordão" e "<bairro> campos do jordão", para 26 bairros); (b) matching-terms de "<bairro> campos do jordão" (com e sem acento, volume ≥ 10). Arquivos: `overview-bairros-padroes.csv` e `matching-bairros.csv`.

**Resultado principal:** as 52 combinações "casa a venda/terreno + bairro" vieram com **volume 0 ou sem registro** no Ahrefs. A única busca bairro + imóvel com volume é "casas para alugar em campos do jordão capivari" (20), além de "apartamento capivari campos do jordão" (10). Na cauda longa aparecem buscas como "casa à venda campos do jordão capivari", "casa a venda alto da boa vista campos do jordão", "casas a venda em jaguaribe campos do jordão", "casas a venda em abernessia campos do jordão", "casas à venda em campos do jordão vila nova suíça", "terreno vila inglesa / vila paulista / alto da boa vista / vila natal / parque ferradura / colina do imbiri / morro do elefante / nova capivari campos do jordão", todas com 0 de volume (elas existem no banco, mas abaixo de 10/mês).

| Bairro | Palavra principal (vol.) | Outras com volume | Intenção dominante |
|---|---|---|---|
| Capivari | capivari campos do jordão (1.500, KD 10) | campos do jordão capivari 300; centro capivari 300; bairro capivari 40; cep 40; casas para alugar em CJ capivari 20 | turística (parent topic: "parque capivari") |
| Vila Capivari | vila capivari campos do jordão (1.100, KD 0) | campos do jordão vila capivari 150; vila capivari … mapa 90 | turística |
| Vila Inglesa | vila inglesa campos do jordão (400, KD 0; TP 2.500) | vila inglesa 500; alto da vila inglesa 50; bairro vila inglesa 20; condomínio vila inglesa 10 | turística/hotel (parent topic: "hotel campos do jordão") |
| Abernéssia | abernéssia campos do jordão (200, KD 0) | vila abernéssia 100; bairro abernéssia 30; abernessia CJ (sem acento) 10 | mista (praça/comércio) |
| Alto da Boa Vista | alto da boa vista campos do jordão (150, KD 4) | condominio alto da boa vista 10 | turística (parent topic: pousada) |
| Alto do Capivari | alto do capivari campos do jordão (100, KD 0) | alto capivari 60 | local |
| Floresta Negra | floresta negra campos do jordão (70) | — | — |
| Belvedere / Jardim Belvedere | mirante belvedere (100); belvedere CJ (60) | jardim belvedere campos do jordão 30 | turística (mirante) |
| Vila Albertina | vila albertina campos do jordão (50, KD 0) | cep vila albertina 20 | local |
| Baronesa | baronesa campos do jordão (50, KD 0) | fazenda baronesa 40 | local |
| Descansópolis | descansopolis campos do jordão (40, KD 0; sem acento) | forma com acento: 0 | local |
| Vila Everest | vila everest campos do jordão (40, KD 0) | — | local |
| Jaguaribe | jaguaribe campos do jordão (30, KD 0) | vila jaguaribe 30; bairro jaguaribe 20 | local |
| Jardim Embaixador | jardim embaixador campos do jordão (30) | — | local |
| Recanto Feliz | recanto feliz campos do jordão (30) | pousada recanto feliz 70 | turística |
| Parque Imbiry / Imbiri | imbiri campos do jordão (30) | pico do imbiri 50; parque imbiry 10; colinas do imbiri 10 | mista |
| Vila Paulista | vila paulista campos do jordão (20) | — | local |
| Vila Nova Suíça | vila nova suiça campos do jordão (20) | — | local |
| Iporanga | condominio iporanga campos do jordão (80) | iporanga CJ 20; condomínio iporanga 20; sem acento 10 | condomínio (navegacional) |
| Atalaia | atalaia campos do jordão (10) | bairro atalaia 10 | local |
| Alpes de Campos do Jordão | alpes de campos do jordão (10) | — | — |
| Jardim Andirá | jardim andira campos do jordão (10) | — | — |
| Umuarama | condomínio umuarama campos do jordão (10) | umuarama CJ: 0 | — |
| Véu da Noiva | cachoeira veu da noiva campos do jordão (400) | condominio veu da noiva campos do jordao 40; condominio jardim veu da noiva 10 | turística (cachoeira); condomínio com 50 |
| Vale Feliz, Quebradas | 0 / sem dado | — | — |

**Buscas gerais sobre bairros** (`matching-morar-bairros-iptu.csv`): "bairros de campos do jordão" 100, "bairros perigosos em campos do jordão" 100, "mapa dos bairros de campos do jordão" 40, "bairros campos do jordão" 40, "campos do jordão bairros" 30, "melhores bairros para morar em campos do jordão" 20, "bairros em campos do jordão" 20, "mapa de campos do jordão bairros" 10, "bairros pobres de campos do jordão" 10, "melhores bairros de campos do jordão" 10.

**O que isso significa para as páginas de bairro:** a página de bairro não vai capturar "casa à venda + bairro" por volume (ele não existe no Ahrefs). Ela deve mirar o nome puro do bairro ("Vila Inglesa Campos do Jordão", "Abernéssia", "Alto do Capivari"…), trazer os imóveis daquele bairro e funcionar como página de apoio, com link interno para as categorias. O guia hub "Bairros de Campos do Jordão" soma mais de 330 buscas/mês.

### Condomínios com volume
| Condomínio | Palavras (vol.) |
|---|---|
| Iporanga | condominio iporanga campos do jordão 80; iporanga campos do jordão 20; condomínio iporanga campos do jordão 20; condominio iporanga campos do jordao 10 |
| Véu da Noiva | condominio veu da noiva campos do jordao 40; condominio jardim veu da noiva campos do jordao 10 |
| Vila Holandesa | condominio vila holandesa campos do jordão 40 (TP 200) |
| Villa Real / Vila Real | condomínio villa real campos do jordão 30; condominio villa real 10; condominio vila real 10 |
| Outros com 10 | sobre as nuvens; vila inglesa; aspen village; umuarama; cidade do sol; beverly hills; alto da boa vista; pedra do fogo; vila simonsen |
| Genérico | condomínio campos do jordão 100 (atenção: a SERP é de um loteamento homônimo em Ribeirão Preto/Curitiba, ver seção 7); melhor condomínio de campos do jordão 10; casa condominio campos do jordao 30; casa em condominio campos do jordao 20 |

### Santo Antônio do Pinhal e São Bento do Sapucaí
| Cidade | Palavras com mais volume |
|---|---|
| Santo Antônio do Pinhal | terreno santo antonio do pinhal 100; casa para alugar em santo antônio do pinhal 100; casas para alugar em santo antônio do pinhal 80; casa em santo antonio do pinhal 70; imoveis santo antonio do pinhal 70; terreno em santo antonio do pinhal 70; casas a venda em santo antonio do pinhal 60; casa a venda (em) santo antonio do pinhal 50 + 50; aluguel temporada santo antonio do pinhal 50; chacara a venda em santo antonio do pinhal 40; chacara em santo antonio do pinhal 40; kitnet para alugar em santo antônio do pinhal 40 |
| São Bento do Sapucaí | casa para alugar em são bento do sapucaí 150; casa para alugar sao bento do sapucai 70; terreno sao bento do sapucai 50; aluguel sao bento do sapucai 50; casas para alugar anual em são bento do sapucaí 50; casa a venda em são bento do sapucaí 40; casa a venda sao bento do sapucai 40; casas a venda em são bento do sapucaí sp 40; terreno em sao bento do sapucai 30; chacara em sao bento do sapucai 30 |

Nas duas cidades, **aluguel pesa mais que compra** (São Bento: "casa para alugar" lidera). Os chalés de hospedagem dominam o volume (ex.: "chalés em santo antônio do pinhal" 600), mas não são imobiliários.

## 5. Sazonalidade (meses de pico)

Índice mensal = soma das buscas do grupo no mês ÷ média mensal do grupo (24 meses, 10/2024 a 09/2026). Acima de 1,00 significa acima da média. Fonte: `overview-top-palavras-sazonalidade-24m.csv`.

| Grupo (nº de palavras) | jan | fev | mar | abr | mai | jun | jul | ago | set | out | nov | dez | Pico |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Casas/imóveis à venda CJ (50) | 1,05 | 0,90 | 1,02 | 1,11 | **1,30** | 1,19 | 1,17 | 0,87 | 0,89 | 0,81 | 0,79 | 0,91 | **mai**, depois jun/jul |
| Terrenos CJ (7) | 0,85 | 0,63 | 0,83 | 1,23 | 1,43 | 1,36 | **1,71** | 1,20 | 0,97 | 0,62 | 0,53 | 0,64 | **jul**, abr–ago alto |
| Apartamentos CJ (8) | 1,15 | 0,94 | 1,05 | 1,26 | **1,30** | 1,21 | 1,23 | 0,69 | 0,72 | 0,78 | 0,78 | 0,90 | **abr–jul** |
| Aluguel residencial CJ (18) | **1,31** | 0,94 | 1,11 | 1,06 | 1,25 | 1,01 | 0,98 | 0,76 | 0,65 | 0,96 | 1,00 | 0,97 | **jan** e **mai** |
| Temporada CJ (7) | 0,84 | 0,64 | 0,95 | 1,25 | 1,31 | 1,07 | 1,14 | **1,64** | 1,01 | 0,77 | 0,58 | 0,77 | abr–mai e **ago** |
| Alto padrão/mansão (5) | 1,19 | 0,69 | 0,96 | 0,98 | 1,26 | **1,52** | 1,27 | 0,74 | 0,49 | 0,85 | 0,74 | 1,31 | **jun**, dez |
| Santo Antônio do Pinhal/São Bento (27) | **1,36** | 1,06 | 1,26 | 1,13 | 1,12 | 0,87 | 1,05 | 0,60 | 0,58 | 1,11 | 0,93 | 0,92 | **jan–mar** |

Destaques por palavra (histórico do Ahrefs):
- **terreno campos do jordão:** em 2025 saltou de 244 (mar) para 544 (abr), 735 (mai) e 662 (jun), e caiu para 120–169 em set–nov. Em 2026 ficou em 331–372 de abr a jun e 276–325 de jul a set. Entre 2021 e 2024 a palavra oscilava entre 120 e 360.
- **casa em campos do jordao:** pico todo ano em mai/jun (1.140 em mai/2021; 801–808 em mai–jun/2024; 820 em mai/2025; 629 em mai/2026) e vale em ago–out (~360–445).
- **apartamento campos do jordão:** picos em abr–jul (606 em mai/2021; 408–412 em mai–jul/2024; 353 em mai/2025; 290–296 em abr–jul/2026).
- **imobiliária campos do jordão:** de 0–38/mês até abr/2026, pulou para 165–264/mês entre mai e set/2026.
- **aluguel temporada santo antonio do pinhal:** índice 9,6 em out (o pico está concentrado nesse mês).

**Uso prático:** publicar e atualizar categorias e conteúdo de compra entre **março e abril**, para estarem indexados antes do pico de maio a julho; terrenos até junho; conteúdo de locação anual em dezembro, para o pico de janeiro.

## 6. Perguntas para FAQ

**(a) Perguntas que o Google mostra nas SERPs de compra ("People also ask", coletadas pelo serp-overview):**
- Qual o valor de uma casa em Campos do Jordão? / Qual é o valor médio de casas em Campos do Jordão?
- Quanto custa (para) morar em Campos do Jordão? / Qual o custo de vida para morar em Campos do Jordão?
- Qual o melhor bairro para (se) morar em Campos do Jordão?
- Qual é o bairro mais rico de Campos do Jordão?
- Qual a casa mais cara de Campos do Jordão?
- Qual (Quais) famoso(s) tem casa em Campos do Jordão?
- Qual é o estilo das casas de Campos do Jordão?
- Dá para comprar uma casa com 100 mil reais?
- Quanto custa em média uma casa simples?
- Quais são os terrenos mais baratos para venda em Campos do Jordão?
- Qual é o valor de um apartamento em Campos do Jordão?
- Onde posso encontrar um apartamento barato em Campos do Jordão?
- Onde posso encontrar apartamentos para alugar em Campos do Jordão?
- Qual o mês mais barato em Campos do Jordão?

**(b) Perguntas com volume no Ahrefs (matching-terms, filtro "questions"; `matching-perguntas-campos-do-jordao.csv`), das mais úteis para quem compra ou se muda:**
| Pergunta | Vol. |
|---|---|
| quantos habitantes tem em campos do jordão (+ variantes: 450, 90, 90, 80, 60, 60…) | 600 |
| qual a altitude de campos do jordão | 200 |
| quantos km de são paulo a campos do jordão (+ distância/horas: 100, 100, 90, 70…) | 150 |
| qual a população de campos do jordão | 100 |
| campos do jordão neva? | 100 |
| qual a cidade mais próxima de campos do jordão | 100 |
| famosos que tem casa em campos do jordão | 60 |
| qual a melhor época para ir em campos do jordão | 60 |
| famosos que moram em campos do jordão | 40 |
| campos do jordão é caro | 40 |
| quanto custa uma casa em campos do jordão | 30 |
| como é morar em campos do jordão | 20 |
| campos do jordão é seguro | 20 |
| é perigoso morar em campos do jordão | 10 |
| qual o mês mais frio em campos do jordão | 10 |

**(c) Temas de "morar" e taxas (não são perguntas, mas servem de FAQ):** iptu campos do jordão 2026 (150), iptu campos do jordão (90), prefeitura de campos do jordão iptu (60), iptu atrasado campos do jordão (60), morar em campos do jordão (40), custo de vida em campos do jordão (30), bairros perigosos em campos do jordão (100).

Sugestão de FAQ para a categoria de casas: valor médio, melhor bairro para morar, custo de vida, se dá para comprar com orçamento menor, documentação para comprar, e IPTU. Para terrenos: terrenos mais baratos, topografia e face do sol, infraestrutura. Para apartamentos: valor, onde achar barato, potencial de temporada.

## 7. Quem domina o top 3 das 20 principais palavras de compra (serp-overview)

Rodei o serp-overview para 32 palavras de intenção de compra (`serp-overview-top30-compra.csv`). A tabela mostra as 20 de maior volume, com os resultados **orgânicos** nas posições 1 a 3. Em várias SERPs a posição 1 não é orgânica (é AI Overview, pacote local ou bloco de perguntas), então o primeiro orgânico aparece como #2. DR é o Domain Rating do domínio; RD são os domínios de referência **da página** que ranqueia ("—" quando o Ahrefs não informa).

| Palavra (vol.) | Top 3 orgânico (DR / RD da página) | Nosso .com | .net |
|---|---|---|---|
| casa em campos do jordao (500) | #1 vivareal.com.br (DR 71 / 0); #3 zapimoveis.com.br (73 / 0) | — | — |
| casas a venda em campos do jordão (350) | #1 olx.com.br (76 / 0); #3 domaniimoveis.com.br (0 / —) | 8 | — |
| casa a venda em campos do jordão (350) | #2 domaniimoveis (0 / —); #3 zapimoveis (73 / 0) | 8 | — |
| casa campos do jordao (350) | #2 imovelweb.com.br (68 / 0); #3 vivareal (71 / 0) | — | 9 |
| casas em campos do jordão (250) | #2 domaniimoveis (0 / —); #3 imovelweb (68 / 0) | 10 | — |
| casas a venda campos do jordão (250) | #1 olx (76 / 0); #3 domaniimoveis (0 / —) | 8 | — |
| terreno campos do jordão (250) | #2 olx (76 / 0); #3 imovelweb (68 / 0) | 6 | 10 |
| apartamento campos do jordão (250) | #1 domaniimoveis (0 / —); #3 zapimoveis (73 / 0) | — | — |
| casas campos do jordão (250) | #2 leardi.com.br (38 / 0); #3 olx (76 / —) | — | — |
| casa a venda campos do jordao (250) | #1 olx (76 / 0); #2 domaniimoveis (0 / —); #3 capivariimoveis.com.br (24 / —) | 8 | — |
| apartamento em campos do jordão (200) | #2 domaniimoveis (0 / —); #3 zapimoveis (73 / 0) | — | — |
| casa em campos do jordão (200) | #2 domaniimoveis (0 / —); #3 vivareal (71 / 0) | — | — |
| casa campos do jordão (200) | #2 imovelweb (68 / 0); #3 wimoveis.com.br (47 / 0) | — | — |
| casas baratas à venda em campos do jordão (150) | #2 imovelweb, página "casas baratas" (68 / —); #3 imoveisglobal.com.br (8 / 0) | — | 8 |
| apartamento a venda em campos do jordão (150) | #1 zapimoveis (73 / 0); #3 loft.com.br (79 / 0) | — | — |
| casa a venda em campos do jordao (150) | #2 domaniimoveis (0 / —); #3 zapimoveis (73 / 0) | 8 | — |
| imoveis campos do jordão (150) | #2 marcomuratori.com.br (1 / 0); #3 imoveisemcamposdojordao.net (0 / —) | — | 3 |
| imoveis em campos do jordao (150) | #1 imoveisemcamposdojordao.net, home (0 / 10); #2 vivareal (71 / 0); #3 cadij.com.br, home (6 / 335) | — | 1 |
| casa a venda campos do jordão (100) | #1 domaniimoveis (0 / —); #3 zapimoveis (73 / 0) | 8 | — |
| imobiliaria em campos do jordão (30, KD 26; SERP de 28/10/2026) | pacote local: Domani, Altitude, Capivari Imóveis; orgânico: #2 instagram.com/imoveiscamposdojordao (100 / —); #3 capivariimoveis.com.br (24 / 0) | — | — |

Outras SERPs coletadas: "casa venda campos do jordao" (.com em 7), "campos do jordão casas a venda" (.com em 8), "campos do jordão casas" (.com em 9), "terreno em campos do jordão" (.com em 5, .net em 7), "imoveis a venda em campos do jordão" (KD 43: .com home em 6, .net home em 7; top 3: vivareal DR 71 e montanhesimoveis.com.br DR 5 / RD 489), "terreno a venda campos do jordão" (.com em 7; #3 muratoriimoveis DR 1), "casas a venda em campos do jordão sp" (.net ficha de imóvel em 6), "mansões em campos do jordão" (#2 luxuryestate.com DR 63; #9 altitudeimoveis, artigo "Mansão em Campos do Jordão"), "chalé a venda em campos do jordão" (#1 fairplayimoveis, DR 0, ficha de pousada), "condominio iporanga campos do jordão" (#1 iporangacampos.com.br, site do condomínio; zapimoveis e vivareal com página de condomínio; marcomuratori em #8 com "Casas à venda Descansópolis – Condomínio Iporanga"), "condomínio campos do jordão" (SERP de um loteamento homônimo, em Ribeirão Preto/Curitiba).

**Quem mais aparece no top 3 (31 SERPs de compra analisadas antes das 2 de "imobiliária"):** domaniimoveis.com.br (12), zapimoveis.com.br (10), olx.com.br (10), imovelweb.com.br (10), vivareal.com.br (7), capivariimoveis.com.br (2), wimoveis.com.br (2), marcomuratori.com.br (2), imoveisemcamposdojordao.net (2). No top 10, as presenças mais frequentes são olx (26), imovelweb (25), vivareal (24), capivariimoveis (22), zapimoveis (21), domaniimoveis (21), montanhesimoveis (14) e **imoveisemcamposdojordao.com (14)**.

**O que é preciso para competir (pelos dados):**
- **Autoridade de domínio não é o fator limitante.** Domani Imóveis (DR 0, página /comprar-ou-alugar/campos-do-jordao/casa sem domínios de referência informados) está entre #1 e #3 em 10 das 20 palavras e tem o maior tráfego estimado da SERP (593/mês na página de casas). Capivari Imóveis tem DR 24; Muratori e Marco Muratori têm DR 1. Os portais (DR 68–76) ranqueiam com páginas de listagem que têm **0 domínios de referência por página** e UR 0–4.
- **O que ranqueia é a página de listagem do tipo de imóvel em Campos do Jordão** (page_type "Listing_Collection"), com o volume do estoque no título ("1.294 Casas à venda em Campos do Jordão, SP", "297 Casas à venda – Imóveis em Campos do Jordão"). Para "casa(s) em campos do jordão/jordao" sem a palavra venda, o Google prefere o mesmo tipo de página.
- **Homes de imobiliárias locais têm de 335 a 713 domínios de referência** (cadij 335, montanhes 489, muratori 520, nosso .com 601, .net 627, opção imóveis 713), mas ficam abaixo das listagens nas buscas por tipo de imóvel. Isso reforça que o trabalho é **otimizar as categorias por tipo** (casas, apartamentos, terrenos) e não a home.
- **Lacunas do nosso .com:** fora do top 10 em "apartamento campos do jordão", "apartamento em/a venda em campos do jordão", "casa em campos do jordão/jordao" e "casa campos do jordão"; em 7–10 nas variantes de "casas à venda"; em 5–7 em terrenos (melhor posição).
- **O que as páginas do topo têm e as nossas não têm** (content-helper-topics, seção 8): a página do ZAP traz texto editorial sobre bairros nobres (Capivari, Alto do Capivari, Jardim do Embaixador, Vila Inglesa), dicas de compra (clima, isolamento, face do sol, documentação) e FAQ. Na nossa categoria de casas, o tópico "Perguntas frequentes sobre compra" teve score **0**, e "Vantagens e motivos para investir" também **0**.

## 8. Tópicos que as páginas do topo cobrem (content-helper-topics)

Arquivo: `content-helper-topics.csv`, com score por página e trechos. "Média" é a cobertura média do top 10 (0–100); "nossa" é o score de imoveisemcamposdojordao.com quando a página está no top 10 analisado.

**"casas a venda em campos do jordão"** (SERP de 30/09/2026)
| Tópico | Média top 10 | Nossa (/imoveis/a-venda/casa, pos. 8) |
|---|---|---|
| Opções de casas à venda (faixas de preço, tamanhos, localização) | 61 | 82 |
| Casas de alto padrão e luxo | 26 | 60 |
| Vantagens e motivos para investir | 19 | 0 |
| Comodidades e qualidade de vida | 17 | 65 |
| Principais bairros e localizações | 14 | 61 |
| Dicas para compra de imóveis | 12 | 20 |
| Perguntas frequentes sobre compra | 9 | 0 |

**"terreno campos do jordão"** (SERP de 03/10/2026)
| Tópico | Média | Nossa (/imoveis/a-venda/terreno, pos. 6) |
|---|---|---|
| Valores e faixas de preço | 62 | 81 |
| Proximidade de pontos de interesse | 22 | 65 |
| Características dos terrenos (metragem, topografia, potencial construtivo) | 15 | 62 |
| Infraestrutura (pavimentação, esgoto, energia, água) | 8 | 0 |
| Potencial de investimento e uso | 1 | 0 |
| Localização e bairros | 0 | 0 |

**"apartamento campos do jordão"** (SERP de 08/10/2026; nosso site não está no top 10): apartamentos à venda (média 58), dicas para comprar apartamento (28), aluguel por temporada (27; Airbnb e Booking estão na SERP), preços (19), morar em CJ (19), vantagens e investimento (10), FAQ (4). O Viva Real cobre "potencial para locação por temporada", "incidência de umidade e posição solar" e "infraestrutura do condomínio (aquecimento, lareira, vagas)".

**"morar em campos do jordão"** (SERP de 29/10/2026): a SERP tem Facebook (grupos), Loft "onde morar", Instagram, Reddit, YouTube e o blog de imoveisemcamposdojordao.net ("melhores bairros de Campos do Jordão para morar e comprar imóvel", pos. 9, scores 67–88). Tópicos: melhores bairros para morar, compra de terreno e construção, imóveis com vista, renda de temporada, morar o ano todo, depoimentos de moradores, preços e mercado.

## 9. Novas páginas a criar (priorizadas pelos dados)

| Prioridade | Página | Palavras-alvo (vol. BR) | Por quê |
|---|---|---|---|
| 1 | **Otimizar a categoria Casas à venda** (existente) | casa a venda em campos do jordão 350; casas a venda em campos do jordão 350; casas a venda campos do jordão 250; casa a venda campos do jordao 250; casa em campos do jordao 500; casa campos do jordao 350; casas em campos do jordão 250 | O cluster soma cerca de 4.800/mês com as variantes genéricas; estamos em 7–10. Faltam FAQ, dicas de compra, bairros e "por que investir". |
| 2 | **Otimizar a categoria Apartamentos à venda** | apartamento campos do jordão 250; apartamento em campos do jordão 200; apartamento a venda em campos do jordão 150; apartamento a venda campos do jordão 80 | 1.120/mês e estamos fora do top 10. O nº 1 é a Domani (DR 0). |
| 3 | **Otimizar a categoria Terrenos** | terreno campos do jordão 250; terreno em campos do jordão 90; terreno campos do jordao 80; terreno a venda (em) campos do jordão 60 + 50; terrenos em campos do jordão 60 | Já estamos em 5–7. Falta cobrir infraestrutura, potencial de uso e bairros. Pico em abril–julho. |
| 4 | **Locação anual/mensal (para morar)** | casas para alugar mensal em campos do jordão 100; casas para alugar em campos do jordão para morar 40; …mensal 40; kitnet para alugar em campos do jordão anual 40; kitnet para alugar (em) campos do jordão 20 + 20; casa para alugar em campos do jordão anual 20 | Aluguel é o maior cluster (2.760/mês). A intenção "para morar" e "mensal" pede uma página própria, separada da temporada. |
| 5 | **Imóveis para alugar em Campos do Jordão** (categoria; reforçar) | aluguel campos do jordão 250; casa para alugar em campos do jordão 250; casas para alugar em campos do jordão 200; …baratas 150; aluguel em campos do jordão 150; casa para alugar campos do jordão 100 | Parent topics: "casas para alugar em campos do jordão" e "aluguel campos do jordão". |
| 6 | **Santo Antônio do Pinhal: imóveis** (hub com venda, aluguel e terreno) | terreno santo antonio do pinhal 100; casa para alugar em santo antônio do pinhal 100; casas para alugar… 80; casa em santo antonio do pinhal 70; imoveis santo antonio do pinhal 70; terreno em… 70; casas a venda em… 60; chacara a venda em… 40 | 1.820/mês somados. |
| 7 | **São Bento do Sapucaí: imóveis** | casa para alugar em são bento do sapucaí 150; casa para alugar sao bento do sapucai 70; terreno sao bento do sapucai 50; aluguel sao bento do sapucai 50; casas para alugar anual… 50; casa a venda em são bento do sapucaí 40 | 1.290/mês; aluguel lidera. |
| 8 | **Bairros de Campos do Jordão** (guia hub + páginas de bairro) | bairros de campos do jordão 100; bairros perigosos em campos do jordão 100; mapa dos bairros… 40; bairros campos do jordão 40; melhores bairros para morar… 20 + nomes puros (vila inglesa CJ 400; abernéssia 200 + 100; alto da boa vista 150; alto do capivari 100) | Não há volume de "casa à venda + bairro". O hub é o que tem busca. |
| 9 | **Condomínios em Campos do Jordão** (hub) + páginas Iporanga, Vila Holandesa, Véu da Noiva, Villa Real | condominio iporanga campos do jordão 80 (+ 20 + 20 + 10); condominio vila holandesa 40; condominio veu da noiva campos do jordao 40 (+ 10); condomínio villa real 30 (+ 10 + 10); casa condominio campos do jordao 30; casa em condominio campos do jordao 20 | Os portais ZAP e Viva Real ranqueiam com página de condomínio; marcomuratori tem página "Descansópolis – Condomínio Iporanga". |
| 10 | **Casas baratas / imóveis até R$ X** | casas baratas à venda em campos do jordão 150; casas para alugar em campos do jordão baratas 150 (aluguel); aluguel barato em campos do jordão 30; apartamento barato em campos do jordão 10 | O Imovelweb ranqueia com a página filtrada por menor preço. A pergunta "Dá para comprar uma casa com 100 mil reais?" está na SERP. |
| 11 | **Alto padrão e mansões** | mansões em campos do jordão 70; mansão campos do jordão 60; mansão em campos do jordão 60 (TP 250); mansao campos do jordao 20; casas de luxo em campos do jordão 10 | Pico em junho e dezembro. Na SERP: luxuryestate (DR 63) e um artigo da Altitude Imóveis. |
| 12 | **Leilão de imóveis em Campos do Jordão** (conteúdo) | leilão campos do jordão 100; leilao campos do jordao 70; leilao imoveis campos do jordao 50; leilao de imoveis campos do jordão 30; leilao de imoveis em campos do jordao 30; leilao imovel campos do jordao 20 | 320/mês somados, com KD 0. Só vale se a imobiliária quiser atender esse público. |
| 13 | **Chácaras e sítios à venda** | chacara em campos do jordão 30; sitio em campos do jordão 30; chacara campos do jordao 30; chacara a venda em campos do jordão 20; sitio a venda em campos do jordão 20 | 190/mês. |
| 14 | **Pousadas, hotéis e chalés à venda** (comercial) | pousada a venda em campos do jordão 50; hotel a venda em campos do jordão 30; chalé a venda em campos do jordão 30; chale a venda campos do jordao 20; pousada a venda campos do jordão 10 | O nº 1 de "chalé a venda" é uma ficha de pousada da Fairplay (DR 0). |
| 15 | **Morar em Campos do Jordão** (guia: custo de vida, IPTU, clima, distância de SP, segurança) | morar em campos do jordão 40; custo de vida em campos do jordão 30 + 20; como é morar 20; campos do jordão é seguro 20; é perigoso morar 10; iptu campos do jordão 2026 150; iptu campos do jordão 90 + perguntas de população (600), altitude (200) e distância de SP (150) | Responde às perguntas da seção 6. |
| 16 | **Quanto custa uma casa em Campos do Jordão** (preços por bairro) | quanto custa uma casa em campos do jordão 30; "Qual o valor de uma casa / valor médio" (PAA em 5 SERPs) | Pergunta recorrente nas SERPs de compra. |
| 17 | **Aluguel por temporada** (somente se a imobiliária oferecer) | aluguel temporada campos do jordao 150; campos do jordão temporada 100; aluguel temporada campos do jordão 80; temporada (em) campos do jordão 40 + 40 | Parent topic "airbnb campos do jordão" (3.100), com Airbnb e Booking na SERP. |
| 18 | **Casas à venda direto com proprietário** (seção ou FAQ na categoria) | casas à venda em campos do jordão direto com proprietário 60 | KD 0. |

## 10. Arquivos gerados nesta pasta
- `PESQUISA-PALAVRAS.md`: este relatório.
- `MASTER-todas-palavras-classificadas.csv`: 2.057 palavras únicas de todas as consultas, com categoria (compra, aluguel, temporada, leilão, compra-comercial, navegacional, SAP/SBS-*, fora-do-escopo) e a origem.
- `TOP-palavras-sazonalidade.csv`: 122 palavras principais com KD, CPC, TP, intenção, SERP features, meses de pico e histórico de 24 meses.
- `overview-sementes.csv`, `overview-bairros-padroes.csv`, `overview-top-palavras-sazonalidade-24m.csv` (bruto).
- `matching-terms-*.csv` (casa venda, casas, apartamento, terreno, imóveis, aluguel, alugar, condomínio, chácara, imobiliária, chalé/pousada/luxo, Santo Antônio do Pinhal/São Bento), `matching-campos-do-jordao-filtro-imobiliario.csv`, `matching-campos-do-jordao-sem-acento-filtro-imobiliario.csv`, `matching-bairros.csv`, `matching-perguntas-campos-do-jordao.csv`, `matching-morar-bairros-iptu.csv`.
- `related-terms-casas-a-venda-em-campos-do-jordao.csv` e `search-suggestions-casas-a-venda-em-campos-do-jordao.csv` (sementes combinadas).
- `serp-overview-top30-compra.csv`: 33 SERPs (top 10 com DR, UR, RD, tráfego, tipo de página e perguntas PAA).
- `volume-history-2021-2026.csv`: 4 palavras, de 01/2021 a 09/2026.
- `content-helper-topics.csv`: 4 palavras, tópicos × páginas × trechos.
