# Páginas de bairro, condomínio e cidades vizinhas: leia antes de publicar

Escrito em 02/11/2026 a partir do `PLANO-DE-ACAO-SEO-29-10.md` (ações B7, C1 e C2), da pesquisa de palavras (Ahrefs), da análise de concorrentes, do `GUIA-BAIRROS.md`, do `ZONEAMENTO.md` e de buscas na web (as fontes estão no fim de cada arquivo).

## Antes de publicar qualquer página

1. **Medir na Semrush SEO Writing Assistant (SWA).** Nota mínima **9,0**; meta **9,7**. Os textos daqui **ainda não foram medidos**. Se a nota ficar abaixo de 9,0, ajustar e medir de novo. O texto publicado tem de ser o mesmo que foi medido (regra do plano: hash igual ao texto medido).
2. **Resolver os "Pontos a confirmar pelo Roberto"** do fim de cada arquivo. Onde a resposta for "não", apagar o trecho indicado.
3. Conferir a grafia do bairro com a regra #62 e, onde o texto fala de terreno, manter a parte de zoneamento (regra #261).
4. Não acrescentar preço, número de imóveis em estoque nem promessa de valorização. Os textos foram escritos sem isso de propósito: a lista do Kenlo mostra o estoque do dia.

## Ordem de publicação

| # | Página | Arquivo | URL | Quando | Por quê |
|---|---|---|---|---|---|
| 1 | Hub Santo Antônio do Pinhal | `santo-antonio-do-pinhal.md` | `/imoveis/santo-antonio-do-pinhal` | Até o fim de novembro (B7) | 1.820 buscas/mês somadas; pico de janeiro a março |
| 2 | Hub São Bento do Sapucaí | `sao-bento-do-sapucai.md` | `/imoveis/sao-bento-do-sapucai` | Até o fim de novembro (B7) | 1.290 buscas/mês; aluguel lidera; pico de janeiro a março |
| 3 | Vila Capivari | `vila-capivari.md` | `/imoveis/campos-do-jordao/vila-capivari` | Dezembro (C1) | 1.500 + 1.100 buscas/mês, intenção turística |
| 4 | Vila Inglesa | `vila-inglesa.md` | `/imoveis/campos-do-jordao/vila-inglesa` | Dezembro (C1), depois da A6 | 400 + 500 |
| 5 | Abernéssia | `abernessia.md` | `/imoveis/campos-do-jordao/abernessia` | Dezembro (C1), depois da A6 | 300 + 200 + 100; já tem 82 impressões (posição 13,8) |
| 6 | Alto da Boa Vista | `alto-da-boa-vista.md` | `/imoveis/campos-do-jordao/alto-da-boa-vista` | Dezembro/janeiro (C1), depois da A6 | 150 |
| 7 | Alto do Capivari | `alto-do-capivari.md` | `/imoveis/campos-do-jordao/alto-do-capivari` | Janeiro (C1), depois da A6 | 100 + 60 |
| 8 | Vale Encantado | `vale-encantado.md` | `/imoveis/campos-do-jordao/vale-encantado` | Janeiro (C1), só com os pontos respondidos | 200; fontes fracas |
| 9 | Jardim Véu da Noiva | `jardim-veu-da-noiva.md` | `/imoveis/campos-do-jordao/jardim-veu-da-noiva` | Texto em janeiro (C1/C2) | 40 + 10; já está em 5,8 |
| 10 | Condomínio Iporanga | `condominio-iporanga.md` | `/imoveis/campos-do-jordao/iporanga` | Texto em janeiro (C2) | 80 + 20 + 20 + 10; já está em 8,5 |

**Atalho (pode ir já):** trocar só o **title e o meta** de **Jardim Véu da Noiva** (posição 5,8, CTR 1,0% contra 9,3% esperado), **Condomínio Iporanga** (posição 8,5) e **Abernéssia** (posição 13,8). Essas páginas já aparecem no Google, então o ganho vem do clique e não depende do texto.

As páginas 6, 7 e 8 (Alto da Boa Vista, Alto do Capivari e Vale Encantado) foram acrescentadas a este lote porque o plano (C1) dá a elas mais busca que Véu da Noiva e Iporanga.

Todo o conteúdo de compra deve estar no ar até março ou abril, antes do pico de compra de abril a julho (plano, C5).

## Dependências

- **Texto na listagem (A1, item 5):** ainda não se sabe se a Kenlo libera título, meta, H1 e bloco de texto nas listagens. Se não liberar, cada arquivo traz um **Plano B**: página fixa no Kenlo Sites, com link para a listagem.
- **Unificar bairros (A6):** antes de Abernéssia (`vila-abernessia` → `abernessia`), Vila Inglesa (duplicatas do Alto da Vila Inglesa), Alto da Boa Vista (`alto-boa-vista`) e Alto do Capivari (`altos-do-capivari`).
- **Capivari:** decidir se a principal é `/imoveis/campos-do-jordao/vila-capivari` (recomendado) ou `/capivari`.
- **Cidades vizinhas (seção 3, item 7):** o Roberto confirma se atende Santo Antônio do Pinhal e São Bento do Sapucaí ativamente, e se faz locação lá.
- **Endereço no schema (A5):** o `RealEstateAgent` dos hubs vai sem endereço até a decisão do CEP.

## Como colar cada arquivo

- **Ficha SEO:** URL, title, meta description e H1.
- **Intro** (entre `INICIO-INTRO` e `FIM-INTRO`): no topo, acima da lista de imóveis.
- **Texto** (entre `INICIO-TEXTO` e `FIM-TEXTO`): abaixo da lista. Os `##` viram H2 e os `###` viram H3.
- **Perguntas frequentes** (entre `INICIO-FAQ` e `FIM-FAQ`): depois do texto. As respostas do schema são iguais às da página; se mudar uma, mude a outra.
- **Schema JSON-LD:** dentro de `<script type="application/ld+json">`, no cabeçalho ou num bloco HTML da página. Validar no Teste de Resultados Avançados do Google.
- **Links internos:** usar as âncoras sugeridas. Só linkar listagens com 2 ou mais imóveis (plano, B5).
- Os comentários `<!-- ... -->` são só marcadores. Não colar no site.

## Vila Holandesa (não escrita)

O plano (C2, item 1) diz: **só criar se houver imóvel nosso lá**. A Ahrefs dá entre 40 e 700 buscas/mês para "vila holandesa campos do jordão" (os números divergem), mais 100 para "condomínio vila holandesa". Só a Altitude ranqueia (6º e 3º), com uma página de imóvel. Se o Roberto tiver ou captar imóvel no Vila Holandesa (seção 3, item 8), vale fazer a página no mesmo modelo de `condominio-iporanga.md`.

## Próximos candidatos (fora deste lote)

Pelo plano (C1 e C2): Jardim Elizabeth (60; já em 11º), Descansópolis (50 + 40), Villa Real (30 + 10 + 10) e os bairros com impressões e zero clique no GSC (Vila Nadir, Jardim Sumaré, Cidade do Sol, Floresta Negra e Vila Cláudia).

## Como medir depois de publicar

No Google Search Console, por página: impressões, cliques, CTR e posição. Metas do plano: Véu da Noiva, Abernéssia e Vila Nadir com cliques acima de zero em 60 dias; nos hubs, acompanhar as consultas com "pinhal" e "sapuca".
