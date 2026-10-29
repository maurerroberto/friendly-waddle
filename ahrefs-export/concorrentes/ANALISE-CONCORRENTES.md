# Análise de concorrentes — Imóveis em Campos do Jordão

Data dos dados: 29/10/2026. Fonte: API Ahrefs v3 (ferramentas MCP), país BR, modo `subdomains`. SERPs coletadas pelo Ahrefs entre set. e out./2026.
Todos os números abaixo vêm da API. Onde algo não pôde ser obtido, está escrito. As interpretações e sugestões estão marcadas como recomendação.

Arquivos desta pasta:

| Arquivo / pasta | Conteúdo |
|---|---|
| `metricas-concorrentes-batch-analysis.csv` | DR, domínios de referência, backlinks, palavras, tráfego e valor de 22 domínios (nós + concorrentes) |
| `organic-competitors-BR.csv` | Os 20 concorrentes orgânicos que o Ahrefs aponta para o nosso domínio |
| `serps-buscas-principais.csv` + `serps-NOTAS.txt` | Top 10 de 10 buscas principais |
| `keywords/` | Palavras orgânicas BR de cada concorrente (portais e Leardi: só termos de Campos do Jordão) |
| `top-pages/` | Páginas com mais tráfego de cada concorrente |
| `refdomains/` | Domínios de referência vivos e não-spam de cada concorrente (portais: top 200 por DR) e os nossos (histórico completo) |
| `anchors/` | Top 30 âncoras de cada concorrente |
| `perfis/` | Um relatório curto por concorrente (gerado a partir dos CSVs) |
| `LINK-GAP.csv` | 148 domínios que linkam para 2 ou mais concorrentes e não para nós |
| `KEYWORD-GAP.csv` | 119 palavras em que algum concorrente está no top 10 e nós não estamos |

---

## 1. Resumo

1. **Ninguém tem autoridade de links no mercado local.** O DR das imobiliárias de Campos do Jordão vai de 0 a 5. A única exceção é a Capivari Imóveis, com DR 24. Todas, inclusive nós, têm de 560 a 850 domínios de referência, mas quase todos vêm da mesma rede de spam (`seo-high-ranking.shop`, `kawaiishop.shop`, `*.seoexpress.store` etc.). Sem o spam, cada uma fica com 20 a 45 domínios, e só 3 a 10 deles têm tráfego real.
2. **Quem ganha é quem tem a página-categoria certa.** A Domani tem DR 0,9 e é a imobiliária local com mais tráfego: 1.060/mês, contra 190/mês nossos. Quase tudo vem de 3 URLs simples: `/comprar-ou-alugar/campos-do-jordao/casa` (568/mês), `/alugar/campos-do-jordao` (115) e `/comprar-ou-alugar/campos-do-jordao/apartamento` (114).
3. **Os portais ficam com o topo das buscas de cauda curta** (ZAP, VivaReal, OLX e Imovelweb, com DR de 68 a 76). Mesmo assim, há imobiliárias locais no top 5 de quase todas as buscas. Ficar em 1º entre as imobiliárias locais é viável a curto prazo. Passar os portais exige páginas-categoria e de bairro mais completas do que as deles.
4. **Nossos buracos maiores** (palavras em que não aparecemos): apartamentos ("apartamento campos do jordão", 200/mês), "casa em campos do jordao" (450/mês), aluguel residencial ("casa para alugar em campos do jordão", 250/mês), páginas de bairro e de condomínio ("vila holandesa campos do jordão", 700/mês) e guias ("bairros de campos do jordão", "morar em campos do jordão").

> Atenção: **imoveisemcamposdojordao.net** tem nome quase idêntico ao nosso. Ele é o projeto 10408013 na mesma conta Ahrefs e já linkou para o nosso site (de set./2025 até 18/10/2026, link agora perdido). Aqui ele foi tratado como concorrente, porque disputa as mesmas buscas. **Confirmar se o site é nosso.** Se for, as palavras em que ele ganha e nós não deixam de ser lacuna: viram tarefa de consolidar os dois sites (redirecionar ou separar o papel de cada um).

---

## 2. Quem são os concorrentes e os números

### 2.1 Imobiliárias locais e regionais

| Domínio | DR | Dom. ref. (total / dofollow) | Dom. ref. não-spam vivos* | Palavras BR | Top 3 | Tráfego BR/mês |
|---|---|---|---|---|---|---|
| **imoveisemcamposdojordao.com (NÓS)** | **0,4** | **846 / 353** | 18 com tráfego > 0 | **42** | **11** | **190** |
| domaniimoveis.com.br | 0,9 | 577 / 74 | 22 | 75 | 50 | **1.060** |
| capivariimoveis.com.br | **24** | 692 / 91 | 34 | 48 | 19 | 357 |
| imoveisemcamposdojordao.net | 0,0 | 636 / 111 | 45 | 49 | 25 | 233 |
| muratoriimoveis.com.br | 1,4 | 744 / 114 | 42 | 37 | 17 | 205 |
| cesaresantannaimoveis.com.br | 3,2 | 562 / 86 | 23 | 41 | 18 | 186 |
| marcomuratori.com.br | 1,2 | 675 / 88 | 32 | 27 | 9 | 176 |
| montanhesimoveis.com.br | 5,0 | 707 / 87 | 38 | 26 | 6 | 114 |
| altitudeimoveis.com.br | 0,5 | 662 / 72 | 19 | 33 | 17 | 86 |
| leardi.com.br (franquia regional) | 38 | 1.300 / 644 | 132 | 1.049 (14 de CJ) | 224 | 6.537 (≈92 nas páginas de CJ) |
| luxuryproperties.com.br (alto padrão) | 12 | 904 / 234 | 65 com tráfego > 0 | 1.429 (3 de CJ) | 380 | 6.755 |
| opcaoimoveis.com | 3,5 | 963 / 350 | 12 com tráfego > 0 | 5 | 0 | 4 |
| cadij.com.br | 6,0 | 780 / 79 | 11 com tráfego > 0 | 0 | 0 | 0 |
| juarezzimoveis.com.br | 0,1 | 752 / 86 | 7 com tráfego > 0 | 2 | 0 | 4 |
| euronegocios.com.br | 0,0 | 364 / 71 | 5 com tráfego > 0 | 0 | 0 | 0 |

\* Domínios vivos que o filtro `is_spam=false` do Ahrefs deixa passar. Mesmo nesse grupo ainda há muitos diretórios automáticos. No nosso caso, a contagem é a de domínios com tráfego > 0. Sem filtro de tráfego, temos 122 domínios não-spam no histórico, entre vivos e perdidos.

Notas:
- Entre os nossos domínios de referência com DR ≥ 5, quase todos são da mesma rede de spam que aparece nos concorrentes (`*.shop`, `*.store`, `*.xyz`). Os únicos links vivos com valor real são **guiacamposjordao.com.br** (DR 24) e **odp.org** (DR 38).
- **marco muratori** e **muratori imóveis** são dois domínios da mesma marca, e os dois ranqueiam.
- **marciosantosimoveis.com.br** aparece em 5º para "imóveis em campos do jordão", mas só 1 das suas 283 palavras é de Campos do Jordão. Não é concorrente direto.

### 2.2 Portais nacionais

| Domínio | DR | Dom. ref. | Palavras BR (total) | Palavras de Campos do Jordão* | Tráfego BR/mês (total) | Tráfego das páginas de CJ** |
|---|---|---|---|---|---|---|
| olx.com.br | 76 | 10.538 | 626.272 | não exportado | 12,85 mi | não exportado |
| zapimoveis.com.br | 73 | 3.536 | 152.480 | 98 | 1,03 mi | ≈ 866 |
| vivareal.com.br | 71 | 3.685 | 176.810 | 99 | 1,05 mi | ≈ 746 |
| chavesnamao.com.br | 72 | 6.399 | 173.341 | não exportado | 970 mil | não exportado |
| imovelweb.com.br | 68 | 4.403 | 133.236 | não exportado | 688 mil | não exportado |

\* Palavras com "jord" (ZAP) ou "campos do jord" (VivaReal), já sem as que não são da cidade (ruas homônimas, Anápolis, Ribeirão Preto).
\** Soma do tráfego das páginas cuja palavra principal contém "campos do jord" (`top-pages/`).

Segundo `organic-competitors-BR.csv`, os concorrentes com mais palavras em comum conosco são OLX (38), VivaReal (36), Imovelweb (35), ZAP (33), Domani (30), Capivari (23), o .net (22), Montanhês (16), César & Sant'Anna (15) e Marco Muratori (11). Também aparecem Loft, Trovit, Airbnb, Temporada Livre e Wimoveis.

---

## 3. Quem está em 1º em cada busca principal

Volumes do Keywords Explorer (BR). Na coluna "1º orgânico" fica o primeiro resultado orgânico. AI Overview, imagens e PAA não entram nela.

| Busca (volume) | 1º orgânico | Melhor imobiliária local | Nós | Observações |
|---|---|---|---|---|
| imóveis em campos do jordão (40) | portal.kenlo.com.br (pos. 2, depois do AI Overview) | .net, citado como fonte do AI Overview | fora do top 12 | Local pack: Domani e Altitude. PAA: "preço de uma casa", "melhor bairro para morar", "valor de um apartamento", "custo de vida". Na grafia sem acento, "imoveis em campos do jordão", estamos em **2º** (KD 55). |
| casas a venda em campos do jordão (350) | OLX | Domani (3º) | **8º** (`/imoveis/a-venda/casa`) | Capivari 5º, Marco Muratori 9º, Leardi 10º |
| casas à venda em campos do jordão (40) | OLX (2º; o 1º não é orgânico) | .net (8º) | fora do top 10 | Wimoveis, Imovelweb, Chaves na Mão, Mitula, Trovit |
| casa em campos do jordão (200) | Domani (2º) | Domani | 11º | VivaReal 3º, OLX 4º, Capivari 5º, Montanhês 9º |
| imobiliária campos do jordão (100) | Opção Imóveis (2º) | **Local pack: Marco Muratori, Capivari e NÓS** | **no local pack** | Orgânico: Marco Muratori 3º, Cadij 4º, Capivari 5º, .net 7º, Euro 8º, Juarezz 9º |
| terreno campos do jordão (250)¹ | OLX (2º) | **Nós (6º)** | **6º** (`/imoveis/a-venda/terreno`) | Domani 7º, Muratori 8º, .net 10º |
| apartamento a venda em campos do jordão (150)¹ | **ZAP (1º)** | Capivari (4º) | fora do top 10 | Domani 6º, Montanhês 7º, Muratori 10º |
| condomínio campos do jordão (100)¹ | Local pack com loteamentos homônimos | — | fora | SERP tomada pelo "Condomínio Campos do Jordão" de Ribeirão Preto/Curitiba. Busca de pouco interesse para nós. |
| chacara a venda em campos do jordão (20)¹ | Imovelweb (1º) | nenhuma no top 10 | fora | Só portais, inclusive Arbo e MGF. É oportunidade. |
| aluguel campos do jordão (250) | **VivaReal (1º)** | **Domani (2º)** | **9º** (`/imoveis/para-alugar`) | OLX 3º, grupo do Facebook 4º, César & Sant'Anna 5º, Temporada Livre 7º, .net 8º |

¹ O Ahrefs não tem SERP para as grafias pedidas ("terrenos à venda campos do jordão", "apartamento à venda campos do jordão", "casa em condomínio campos do jordão", "chácara à venda campos do jordão"). Por isso foram usadas as variantes com SERP e volume na base. Detalhes em `serps-NOTAS.txt`.

---

## 4. Lacuna de links (top 30)

Método: lista de domínios vivos e não-spam de 15 concorrentes (as 9 imobiliárias locais, mais Leardi, Luxury Properties, Opção, Cadij, Juarezz e Euro, e ainda ZAP e VivaReal com os top 200 por DR), comparada com **todo o nosso histórico** de domínios não-spam, vivos e perdidos. Resultado: 148 domínios em `LINK-GAP.csv`, dos quais 31 marcados como spam ou diretório automático. Abaixo, primeiro os que linkam para imobiliárias locais e depois os mais úteis entre os que só linkam para ZAP e VivaReal.

| # | Domínio | DR | Tráfego do domínio | Quem recebe link | Tipo | Como conseguir (recomendação) |
|---|---|---|---|---|---|---|
| 1 | urlm.com.br | 9 | 1.529 | 10 locais (Capivari, .net, Muratori ×2, Montanhês, Leardi, Opção, Cadij, Juarezz, Euro) | diretório de sites | Página de análise automática. Verificar se nosso domínio já tem página lá e pedir indexação ou cadastro. |
| 2 | magicpin.com | 32 | 244.772 | 8 (Domani, Capivari, César, Altitude, Juarezz, Leardi, Opção, Luxury) | diretório de empresas locais | Criar ou reivindicar a ficha da empresa com o link do site. |
| 3 | benditoguia.com.br | 26 | 2.502 | 7 (Capivari, Muratori ×2, Leardi, Opção, Cadij, Marcio Santos) | guia comercial/local | Cadastrar a imobiliária na categoria imobiliárias de Campos do Jordão. |
| 4 | telelistas.net | 60 | 18.821 | 4 (Capivari, .net, Juarezz, Leardi) | lista telefônica/diretório | Cadastro grátis da empresa com site, telefone e endereço iguais aos do Google Business Profile. |
| 5 | cuiket.com.br | 19 | 223 | 4 (Capivari, .net, Montanhês, Leardi) | classificados/diretório | Criar perfil de anunciante com link. |
| 6 | guiacalt.com.br | 0 | 6 | 4 (Capivari, Domani, Leardi, Marcio Santos) | guia comercial | Cadastro (baixo valor, mas é rápido). |
| 7 | tournacity.com.br | 0 | 11 | 4 (Capivari, Domani, Leardi, Marcio Santos) | guia de cidades | Cadastro (baixo valor). |
| 8 | linktr.ee | 94 | 7,7 mi | 3 locais (Muratori, Altitude, Leardi) + ZAP e VivaReal | link-in-bio | Criar o Linktree da imobiliária (Instagram) apontando para o site e as páginas-categoria. |
| 9 | wanderlog.com | 78 | 2,18 mi | 3 (Capivari, Altitude, Marco Muratori) | guia de viagem com fichas de lugares do Google | A ficha vem do Google Maps. Manter o Google Business Profile completo com o site. |
| 10 | misterwhat.com.br | 31 | 890 | 3 locais (Capivari, Montanhês, Opção) + Luxury | diretório de empresas | Cadastro grátis. |
| 11 | listatudo.com.br | 24 | 6.195 | 3 (.net, Juarezz, Leardi) | diretório de empresas | Cadastro grátis. |
| 12 | guiame.com.br | 67 | 11.748 | 2 (Opção, Cadij) | guia comercial | Cadastro na categoria imobiliárias de Campos do Jordão. |
| 13 | netcampos.com | 26 | 2.358 | 2 (Muratori, Opção) | portal/guia de Campos do Jordão | Contato comercial: anúncio, parceria ou artigo sobre o mercado imobiliário local. |
| 14 | datanyze.com | 78 | 40.513 | 2 (Leardi, Euro) | base de dados de empresas | Perfil gerado de forma automática. Baixa prioridade. |
| 15 | rocketreach.co | 76 | 4,2 mi | 2 (Muratori, Leardi) | base de dados de empresas | Perfil automático. Baixa prioridade. |
| 16 | crunchbase.com | 91 | 2,45 mi | Leardi, ZAP, VivaReal | base de dados de empresas | Criar o perfil da empresa (grátis) com o site. |
| 17 | r7.com | 82 | 6,1 mi | Leardi, ZAP, VivaReal | notícia | Assessoria de imprensa: pauta sobre preço do m² e turismo de inverno em Campos do Jordão. |
| 18 | cps.sp.gov.br | 72 | 115.286 | Leardi, ZAP, VivaReal | governo (Centro Paula Souza/ETECs) | Parceria com a ETEC local: estágio, palestra ou curso técnico em transações imobiliárias. |
| 19 | comunidades.net | 73 | 39.148 | Leardi, ZAP | plataforma de sites (UGC) | Baixo valor. Só se houver blog/comunidade local. |
| 20 | portaldofranchising.com.br | 70 | 35.250 | Leardi, ZAP | associação de franquias | Não se aplica (só para franquias). |
| 21 | real49.com.br | 0 | 7 | César & Sant'Anna, Luxury | verificar | Verificar o site antes de agir. |
| 22 | sebrae.com.br | 86 | 434.048 | ZAP, VivaReal | entidade | Case ou conteúdo em parceria com o Sebrae-SP regional (Vale do Paraíba). |
| 23 | tecimob.com.br | 81 | 3.992 | ZAP, VivaReal | software imobiliário | Se usarmos o software de um fornecedor (CRM ou site), pedir para entrar como cliente/case com link. |
| 24 | cvcrm.com.br | 71 | 10.965 | ZAP, VivaReal | software imobiliário | Mesma tática do item 23. |
| 25 | stays.net | 77 | 102.112 | ZAP, VivaReal | gestão de temporada | Parceria para aluguel de temporada, se houver. |
| 26 | expat.com | 72 | 27.342 | ZAP, VivaReal | guia de expatriados | Cadastrar a empresa no diretório "Housing" do Brasil. |
| 27 | riotimesonline.com | 75 | 43.145 | ZAP, VivaReal | notícia (em inglês) | Pauta para estrangeiros que compram casa de campo. Baixa probabilidade. |
| 28 | olx.com.br | 76 | 12,9 mi | ZAP, VivaReal | portal | Anunciar com página de anunciante e link para o site. O link tende a ser nofollow, mas dá tráfego. |
| 29 | infomoney.com.br | 83 | 3,27 mi | ZAP, VivaReal | notícia/finanças | Dados próprios (preço médio por bairro, tempo de venda) como fonte para jornalistas. |
| 30 | estadao.com.br | 87 | 6,79 mi | ZAP, VivaReal | notícia | Mesma tática do item 29, com pauta de inverno e alta temporada. |

**Links que tivemos e perdemos (recuperáveis).** Estão no nosso histórico com `last_seen` preenchido (`refdomains/imoveisemcamposdojordao.com__NOSSO__all_time_nao-spam.csv`):
- guiaimobiliarias.com (DR 29, tráfego 1.141): 12 links, perdidos em abr./2023.
- camposdojordao.com (DR 19): perdido em 2016.
- curlie.org (DR 70, o diretório que substituiu o DMOZ): perdido em 2020.
- imobiliariasnet.com.br (DR 19) e imobiliarias.wiki.br (DR 12).
- imoveisemcamposdojordao.net: perdido em 18/10/2026.

Recomendação: pedir que os links voltem.

**Links da Luxury Properties.** São quase todos portais de notícia regionais com cara de publieditorial: tribunaonline.com.br (DR 60), jornaldiadia.com.br (56), portogente.com.br (54), portalutil.com.br (32), cameracotidiana.com.br (33). Opção paga, se houver orçamento.

---

## 5. Lacuna de palavras (top 50)

Método: juntei as palavras de todos os concorrentes. As locais entram completas. Leardi, ZAP, VivaReal e Luxury entram só com os termos de Campos do Jordão. Tirei marcas de concorrentes e termos de outras cidades. Fica na lista a palavra em que **algum concorrente está entre os 10 primeiros** e nós estamos **fora do top 10 ou não ranqueamos**. O resultado tem 119 palavras, que somam cerca de 7.020 buscas/mês (`KEYWORD-GAP.csv`), em ordem de volume.

Sobre o KD: o Ahrefs dá 0 para quase todas as buscas locais, porque os resultados quase não têm links. Só três têm KD acima de zero nesta lista: "imobiliaria em campos do jordão" (26), "alto da boa vista campos do jordão" (5) e as variações de "pontos turísticos" (1).

Sobre "não ranqueia": a palavra não aparece entre as nossas 42 palavras orgânicas BR no Ahrefs, ou seja, estamos fora do top 100 ou o Ahrefs não registra.

| # | Palavra | Vol. BR | KD | Melhor concorrente (pos.) | Concorrentes no top 10 | Nossa posição | Página a criar/otimizar |
|---|---|---|---|---|---|---|---|
| 1 | vila holandesa campos do jordão | 700 | 0 | altitudeimoveis.com.br (6) | 1 | não ranqueia | página de condomínio/empreendimento |
| 2 | casa em campos do jordao | 450 | 0 | vivareal.com.br (1) | 7 | não ranqueia | listagem casas à venda |
| 3 | casa campos do jordao | 300 | 0 | domaniimoveis.com.br (1) | 7 | não ranqueia | listagem casas à venda |
| 4 | abernéssia | 300 | 0 | imoveisemcamposdojordao.net (1) | 1 | não ranqueia | página de bairro |
| 5 | casa para alugar em campos do jordão | 250 | 0 | cesaresantannaimoveis.com.br (1) | 4 | não ranqueia | listagem aluguel |
| 6 | apartamento campos do jordão | 200 | 0 | domaniimoveis.com.br (1) | 5 | não ranqueia | listagem apartamentos |
| 7 | casa em campos do jordão | 200 | 0 | vivareal.com.br (1) | 6 | 11 | listagem casas à venda |
| 8 | casas campos do jordão | 200 | 0 | capivariimoveis.com.br (1) | 6 | não ranqueia | listagem casas à venda |
| 9 | lugares turisticos em campos do jordão | 200 | 0 | zapimoveis.com.br (1) | 1 | não ranqueia | guia/blog informativo |
| 10 | vale encantado campos do jordão | 200 | 0 | vivareal.com.br (5) | 2 | não ranqueia | página de bairro |
| 11 | apartamento em campos do jordão | 150 | 0 | domaniimoveis.com.br (1) | 4 | não ranqueia | listagem apartamentos |
| 12 | imoveis campos do jordão | 150 | 0 | imoveisemcamposdojordao.net (1) | 3 | não ranqueia | home/listagem geral de imóveis |
| 13 | casas baratas à venda em campos do jordão | 150 | 0 | imoveisemcamposdojordao.net (1) | 4 | não ranqueia | listagem casas à venda |
| 14 | casas para alugar em campos do jordão | 150 | 0 | zapimoveis.com.br (1) | 4 | não ranqueia | listagem aluguel |
| 15 | casa campos do jordão | 150 | 0 | vivareal.com.br (1) | 3 | não ranqueia | listagem casas à venda |
| 16 | pontos turísticos em campos do jordão | 150 | 1 | zapimoveis.com.br (1) | 1 | não ranqueia | guia/blog informativo |
| 17 | mansões campos do jordão | 100 | 0 | capivariimoveis.com.br (1) | 4 | não ranqueia | listagem alto padrão/mansões |
| 18 | apartamento a venda em campos do jordão | 100 | 0 | zapimoveis.com.br (1) | 6 | não ranqueia | listagem apartamentos |
| 19 | condomínio vila holandesa | 100 | 0 | altitudeimoveis.com.br (3) | 1 | não ranqueia | página de condomínio/empreendimento |
| 20 | pontos turísticos campos do jordão | 100 | 1 | zapimoveis.com.br (3) | 1 | não ranqueia | guia/blog informativo |
| 21 | alto da boa vista campos do jordão | 100 | 5 | vivareal.com.br (9) | 1 | não ranqueia | página de bairro |
| 22 | mansões em campos do jordão | 90 | 0 | vivareal.com.br (8) | 3 | não ranqueia | listagem alto padrão/mansões |
| 23 | casas para alugar mensal em campos do jordão | 80 | 0 | cesaresantannaimoveis.com.br (1) | 4 | não ranqueia | listagem aluguel |
| 24 | bairros de campos do jordão | 80 | 0 | imoveisemcamposdojordao.net (1) | 2 | não ranqueia | guia/blog informativo |
| 25 | casas em campos do jordao | 70 | 0 | vivareal.com.br (1) | 6 | não ranqueia | listagem casas à venda |
| 26 | casas para alugar em campos do jordão baratas | 70 | 0 | cesaresantannaimoveis.com.br (1) | 2 | não ranqueia | listagem aluguel |
| 27 | alto das mansões campos do jordão | 70 | 0 | imoveisemcamposdojordao.net (7) | 1 | não ranqueia | listagem alto padrão/mansões |
| 28 | vila suiça campos do jordão | 60 | 0 | vivareal.com.br (1) | 2 | não ranqueia | página de bairro |
| 29 | jardim elizabeth campos do jordão | 60 | 0 | vivareal.com.br (1) | 4 | 11 | página de bairro |
| 30 | casas a venda em campos do jordão sp | 60 | 0 | imoveisemcamposdojordao.net (2) | 5 | não ranqueia | listagem casas à venda |
| 31 | casa para alugar campos do jordão | 60 | 0 | cesaresantannaimoveis.com.br (2) | 3 | não ranqueia | listagem aluguel |
| 32 | apartamento para alugar em campos do jordão | 60 | 0 | domaniimoveis.com.br (2) | 2 | não ranqueia | listagem aluguel |
| 33 | pontos turisticos de campos do jordao | 60 | 1 | zapimoveis.com.br (2) | 1 | não ranqueia | guia/blog informativo |
| 34 | terrenos a venda em campos do jordão | 50 | 0 | vivareal.com.br (1) | 5 | não ranqueia | listagem terrenos |
| 35 | imóveis em campos do jordão | 50 | 0 | imoveisemcamposdojordao.net (1) | 4 | não ranqueia | home/listagem geral de imóveis |
| 36 | casa para alugar em campos do jordao | 50 | 0 | zapimoveis.com.br (1) | 4 | não ranqueia | listagem aluguel |
| 37 | campos do jordão aluguel | 50 | 0 | vivareal.com.br (1) | 1 | não ranqueia | listagem aluguel |
| 38 | vila albertina campos do jordão | 50 | 0 | cesaresantannaimoveis.com.br (5) | 1 | não ranqueia | página de bairro |
| 39 | vila abernéssia campos do jordão | 50 | 0 | domaniimoveis.com.br (7) | 1 | não ranqueia | página de bairro |
| 40 | descansopolis | 50 | 0 | domaniimoveis.com.br (8) | 1 | não ranqueia | página de bairro |
| 41 | belvedere campos do jordão | 50 | 0 | vivareal.com.br (8) | 1 | não ranqueia | página de bairro |
| 42 | casas de campos do jordão | 40 | 0 | vivareal.com.br (1) | 5 | não ranqueia | listagem casas à venda |
| 43 | descansopolis campos do jordão | 40 | 0 | vivareal.com.br (1) | 3 | não ranqueia | página de bairro |
| 44 | campos do jordão pontos turísticos | 40 | 1 | zapimoveis.com.br (1) | 1 | não ranqueia | guia/blog informativo |
| 45 | vila jaguaribe campos do jordão | 40 | 0 | vivareal.com.br (1) | 1 | não ranqueia | página de bairro |
| 46 | vila matilde campos do jordão | 40 | 0 | vivareal.com.br (1) | 1 | não ranqueia | página de bairro |
| 47 | condomínio campos do jordão | 40 | 0 | vivareal.com.br (8) | 1 | não ranqueia | página de condomínio/empreendimento |
| 48 | aluguel campos do jordao | 40 | 0 | zapimoveis.com.br (9) | 1 | não ranqueia | listagem aluguel |
| 49 | apartamentos em campos do jordão | 30 | 0 | domaniimoveis.com.br (1) | 6 | não ranqueia | listagem apartamentos |
| 50 | apartamento campos do jordao | 30 | 0 | domaniimoveis.com.br (1) | 6 | não ranqueia | listagem apartamentos |

**Lacuna por tipo de página** (as 119 palavras): guia ou blog informativo 24, página de bairro 23, listagem de aluguel 22, casas à venda 14, condomínio ou empreendimento 10, apartamentos 7, alto padrão ou mansões 5, home ou listagem geral 4, terrenos 3, chácaras ou sítios 3, chalés 2, pousadas 1, outro 1.

**Onde já estamos perto (posição 11)**: "casa em campos do jordão" (200/mês, em 11º com `/imoveis/a-venda/casa`) e "jardim elizabeth campos do jordão" (60/mês, em 11º com `/imoveis/campos-do-jordao/jardim-elisabeth`). São as vitórias mais rápidas.

---

## 6. Que páginas ganham (padrões dos líderes)

Dados de `top-pages/` e `keywords/`. O "tipo" vem da classificação por IA do próprio Ahrefs (`page_type`), quando existe.

1. **Página-categoria "tipo de imóvel + cidade"** é o formato que mais traz tráfego, nos portais e nas imobiliárias:
   - ZAP: `/venda/casas/sp+campos-do-jordao/` (415/mês, 25 palavras), `/aluguel/imoveis/sp+campos-do-jordao/` (170), `/venda/apartamentos/...` (116), `/venda/terrenos-lotes-condominios/...` (57), `/venda/hoteis-moteis-pousadas/...` (29), `/venda/fazendas-sitios-chacaras/...` (23).
   - VivaReal: `/venda/sp/campos-do-jordao/casa_residencial/` (327), `/aluguel/sp/campos-do-jordao/` (145), `/venda/sp/campos-do-jordao/` (71), `/lote-terreno_residencial/` (61), `/granja_comercial/` (23, chácaras).
   - Domani: casa (568), aluguel (115), apartamento (114). As três respondem por cerca de 75% do tráfego do site.
   - .net: `/casas` (55), `/terrenos` (36), `/pousadas`, `/sitios`, `/imoveis/locacao`.
   - Nós já temos `/imoveis/a-venda/casa`, `/imoveis/a-venda/terreno` e `/imoveis/para-alugar`, que ranqueiam do 2º ao 10º. **Falta força em apartamento, chácara/sítio, pousada e aluguel por tipo.**
2. **Bairro (sozinho ou com tipo)** é a cauda longa dos portais:
   - VivaReal tem `/bairros/<bairro>/` para cada bairro e fica em 1º para vila siomara, vila jaguaribe, jardim elizabeth, vila floresta, vila suíça, descansópolis, vila telma e vila matilde. Também cruza bairro e tipo, como `/bairros/atalaia/lote-terreno_residencial/`, em 1º para "terrenos a venda em campos do jordão".
   - ZAP usa `++bairro` nas listagens e tem um guia por bairro em `/guia-de-bairros/sp+campos-do-jordao+<bairro>/`.
   - Domani usa `/regiao-do-imbiri/terreno/`, que aparece em 1º para "terreno campos do jordão" no organic-keywords e em 7º na SERP de set./2026.
3. **Condomínio ou empreendimento**: a Altitude ranqueia para "vila holandesa campos do jordão" (700/mês, 6º), "condomínio vila holandesa" (100/mês, 3º), Saint Etienne, Le Premier e Quatre Saisons, sempre com **páginas de imóvel** cujo título cita o condomínio. A Muratori tem `/condominio-casa/petit-village`. O ZAP tem `/condominio/sp-campos-do-jordao-vila-floresta-villa-real-...`. Nenhum concorrente tem uma página dedicada e completa para cada condomínio, e aí há espaço.
4. **Guias e blog**: VivaReal `/guia-de-cidades/sp/campos-do-jordao/` (8 palavras, em 1º para "bairros de campos do jordão" e "morar em campos do jordão"). ZAP: blog de pontos turísticos (12 palavras, 1º–3º para "lugares turísticos", 200/mês) e de restaurantes. O .net tem `/blog/melhores-bairros-de-campos-do-jordao...` (1º para "bairros de campos do jordão" e "campos do jordão bairros"), `/blog/vila-abernessia...` (1º para "abernéssia", 300/mês) e `/blog/quanto-custa-morar...`. **O .net é citado no AI Overview** de "imóveis em campos do jordão". As perguntas do PAA nessa SERP (preço de uma casa, melhor bairro, valor de um apartamento, custo de vida) mostram o conteúdo que o Google quer.
5. **Página de imóvel com URL e título descritivos** (tipo + quartos + bairro + cidade) pega cauda longa como chalé, mansão ou kitnet. Exemplos: Capivari `/1421/imoveis/venda-casa-em-condominio-3-quartos-vale-encantado-campos-do-jordao-sp`, César & Sant'Anna `/401/imoveis/locacao-kitnet-1-quarto-vila-sodipe-...` (1º para "kitnet para alugar em campos do jordão anual") e Marco Muratori `/imovel/casa-com-5-quartos-a-venda-e-4-vagas-bairro-vila-siomara-em-campos-do-jordao/1028`.
6. **Aluguel residencial (mensal ou anual)** é um nicho que a César & Sant'Anna lidera com uma só listagem, `/imobiliaria/casa/imoveis/12` (108/mês, 23 palavras). Ela fica em 1º para "casa para alugar em campos do jordão", "aluguel em campos do jordão", "casas para alugar mensal..." e "...baratas".
7. **Os títulos dos portais têm números**, como "612 Casas para venda em Campos do Jordão - SP" (ZAP) e "1.278 Casas à venda em Campos do Jordão, SP" (Imovelweb). Nossa página de casas já faz isso ("300 Casas à venda - Imóveis em Campos do Jordão"), e é a que melhor ranqueia.

---

## 7. As 10 ações prioritárias (recomendação)

1. **Criar ou reforçar a página de apartamentos à venda** (`/imoveis/a-venda/apartamento`). A meta é "apartamento campos do jordão" (200), "apartamento em campos do jordão" (150) e "apartamento a venda em campos do jordão" (100–150). Hoje só aparecemos de 6º a 8º em variantes pequenas. Usar H1 e título "Apartamentos à venda em Campos do Jordão", com a contagem de imóveis no título, texto de 300–500 palavras sobre bairros com prédios (Capivari, Jaguaribe, Vila Everest, Alto do Capivari) e FAQ. Link direto da home e do menu.
2. **Fazer a página de casas subir do 8º–11º para o top 3** em "casa em campos do jordao" (450), "casa campos do jordao" (300), "casa em campos do jordão" (200, hoje 11º), "casas campos do jordão" (200) e "casas a venda em campos do jordão" (350, hoje 8º). Colocar "Casas à venda em Campos do Jordão" no H1, texto acima da lista, filtros indexáveis por quartos e faixa de preço, links para casas em condomínio, chalés e mansões, e FAQ com as perguntas do PAA ("qual o preço de uma casa em Campos do Jordão").
3. **Criar páginas de aluguel por tipo e por prazo**: `/imoveis/para-alugar/casa` e uma seção "aluguel anual/mensal", separada de temporada. A meta é "casa para alugar em campos do jordão" (250), "casas para alugar em campos do jordão" (150), "casas para alugar mensal..." (80), "...baratas" (70) e "kitnet para alugar ... anual" (30). Nesse nicho, a César & Sant'Anna e a Domani ganham com páginas simples.
4. **Publicar páginas de bairro** (bairro mais tipo) para os bairros com volume. Esta pasta já tem material em `GUIA-BAIRROS.md` e `guia-bairros/`. Ordem pelo volume do gap: Vila Abernéssia (300 + 50), Vale Encantado (200), Alto da Boa Vista (100), Vila Suíça (60), Jardim Elizabeth (60, já em 11º), Vila Albertina (50), Descansópolis (50 + 40), Belvedere (50), Jaguaribe (40 + 30), Vila Matilde (40), Vila Telma (30), Vila Siomara e Vila Marinela (20). Cada página deve trazer os imóveis do bairro, um guia curto (perfil, distância do Capivari, faixa de preço) e links para os tipos de imóvel.
5. **Criar páginas de condomínio**, a começar por **Vila Holandesa** (700 + 100/mês; só a Altitude ranqueia, em 6º), depois Le Premier, Saint Etienne, Quatre Saisons (70), Villa Real (30), Petit Village (20) e Iporanga (80, no Keywords Explorer). Cada página reúne os imóveis à venda e para alugar no condomínio, fotos, infraestrutura e localização.
6. **Montar páginas de chácaras/sítios e de pousadas**: "sitio em campos do jordão" (30), "chacara em/a venda em campos do jordão" (30 + 30; nenhuma imobiliária local no top 10 da SERP) e "pousada a venda em campos do jordão" (50; já estamos em 10º com `/imoveis/a-venda/hotel`). Pelo histórico de VivaReal e ZAP, são buscas que convertem.
7. **Criar uma página de alto padrão/mansões** para "mansões campos do jordão" (100), "mansões em campos do jordão" (90), "alto das mansões" (70) e "mansões de famosos" (30). Hoje Capivari, Altitude, VivaReal e o .net dividem essas buscas com páginas genéricas.
8. **Publicar guias para o PAA e o AI Overview**: "Melhores bairros para morar em Campos do Jordão" (80 + 30 + 30), "Quanto custa morar em Campos do Jordão", "Preço do m² por bairro" e "Pontos turísticos perto de cada bairro" (o ZAP pega 200 + 150 + 100 com isso). Usar perguntas e respostas curtas no início, dados próprios e links internos para as páginas de bairro. O .net já é citado no AI Overview com esse tipo de conteúdo.
9. **Conseguir as citações locais que os concorrentes têm** (seção 4): telelistas.net, listatudo, guiame, misterwhat, benditoguia, netcampos, cuiket, urlm, magicpin, guiacalt, tournacity e Linktree. Manter nome, endereço e telefone iguais aos do Google Business Profile (já aparecemos no local pack de "imobiliária campos do jordão"). Pedir de volta os links perdidos de guiaimobiliarias.com, camposdojordao.com, curlie.org e do .net. Como o DR de todos é quase zero, **10 a 15 links locais reais bastam para termos o perfil de links mais forte entre as imobiliárias** (só Capivari, DR 24, e Leardi, DR 38, estão acima).
10. **Resolver o .net e a variante com acento**. (a) Confirmar se imoveisemcamposdojordao.net é nosso. Se for, decidir entre consolidar (redirecionamento 301 página a página para o .com) e manter os dois sem canibalização. Hoje o .net está em 1º para "imoveis campos do jordão" (150) e "imóveis em campos do jordão" (50), e os dois sites disputam as mesmas SERPs. (b) Na home, usar a grafia com acento "Imóveis em Campos do Jordão" no título e no H1: estamos em 2º para "imoveis em campos do jordão", mas fora do top 12 para "imóveis em campos do jordão". (c) Dar às páginas de imóvel URLs e títulos descritivos (tipo, quartos, bairro, cidade), como fazem Capivari, César e Marco Muratori, para pegar chalé, kitnet e nomes de condomínio.

---

## 8. O que não foi possível obter ou foi feito de outro jeito

- **SERP das grafias exatas pedidas**: o Ahrefs não tem SERP para "terrenos à venda campos do jordão", "apartamento à venda campos do jordão", "casa em condomínio campos do jordão" e "chácara à venda campos do jordão", nem para as versões com "em". Usei as variantes com SERP e volume na base (ver `serps-NOTAS.txt`). "imobiliária campos do jordão" não tem KD.
- **metrics, domain-rating e backlinks-stats por concorrente**: os mesmos campos (DR, Ahrefs Rank, domínios de referência, backlinks dofollow/nofollow, palavras por faixa de posição, tráfego e valor) vieram numa chamada só de `batch-analysis` para os 22 domínios. Não fiz uma chamada separada por endpoint.
- **referring-domains top 200**: nas imobiliárias locais, filtrei `is_spam=false` e ordenei por DR. Cada uma tem só 19 a 45 domínios nesse filtro, então o limite de 200 nunca foi atingido. Os perfis completos têm de 560 a 850 domínios, quase todos spam, e não foram exportados linha a linha. Para Opção, Cadij, Juarezz, Euro e Luxury, exportei só os domínios não-spam com tráfego > 0. Para ZAP e VivaReal, os top 200 não-spam por DR, que são mídia nacional e não servem de referência local.
- **organic-keywords top 500**: os sites locais têm menos de 80 palavras, então vieram completos. Para ZAP, VivaReal, Leardi, Luxury e Marcio Santos, filtrei os termos com "jord" ou "campos do jord", porque o top 500 geral seria de outras cidades. OLX, Imovelweb e Chaves na Mão não tiveram as palavras exportadas, só métricas e SERPs.
- **Âncoras**: vieram com o filtro `is_spam=false`, mas ainda há muita âncora de spam (depoimentos falsos "SEOExpress.org", "PBN"). Encurtei essas âncoras nos CSVs.
- **"Não ranqueia"** no KEYWORD-GAP quer dizer que a palavra não está nas nossas 42 palavras do Ahrefs. A posição real pode estar além do 100º ou não ter sido rastreada.
- **Volumes**: o organic-keywords dá o volume do último mês e o Keywords Explorer dá a média de 12 meses. Por isso a mesma palavra aparece com volumes diferentes nos dois arquivos (exemplo: "casas a venda em campos do jordão", 300 e 350).
