# ClaudeSEO no .net: análise e plano (11/10/2026)

Fonte: Ahrefs (Brasil, 10/10/2026). O acesso direto ao site foi bloqueado pela rede da sessão na nuvem, então robots.txt, sitemap e llms.txt ainda precisam ser conferidos no computador.

## Fotografia atual
- 42 palavras-chave orgânicas, 14 delas no top 3. Tráfego estimado: 217 visitas por mês, que valeriam cerca de US$ 6,86 em anúncios.
- 1º lugar em "imóveis em campos do jordão" (página inicial).
- Citações em IA: 20 no total, em 10 páginas. ChatGPT 2, Gemini 1, AI Overviews 1. **Perplexity, Copilot e Google AI Mode: zero.**

## Problemas encontrados
1. **www e sem www competem entre si.** Tanto `https://imoveisemcamposdojordao.net/` quanto `https://www.imoveisemcamposdojordao.net/` ranqueiam para a mesma palavra. Escolher uma versão (sugestão: sem www, que já tem mais força) e redirecionar a outra com 301. É o mesmo problema do http/https no .com.
2. **`/Busca` e `/imoveis?pmin=200000` estão indexadas.** São páginas de busca e filtro, que geram conteúdo duplicado. Colocar canonical apontando para `/imoveis` ou `/casas`.
3. **A página de terrenos perde para uma ficha individual.** "terreno em campos do jordão" ranqueia com a ficha 1764 (Cidade do Sol), e não com `/terrenos`. Quando essa ficha for vendida, a posição se perde.

## Oportunidades rápidas (posição 4 a 11: um empurrão leva ao top 3)
| Palavra-chave | Volume/mês | Posição | Página |
|---|---|---|---|
| casa campos do jordao | 300 | 11 | /casas |
| aluguel campos do jordão | 200 | 8 | página inicial |
| casas baratas à venda em campos do jordão | 150 | 5 | /casas |
| casas para alugar mensal em campos do jordão | 100 | 5 | /imoveis/locacao |
| imoveis a venda em campos do jordão | 90 | 9 | página inicial |
| terrenos em campos do jordão (e variações) | 60–80 cada | 8–11 | /terrenos |
| alto das mansões campos do jordão | 70 | 7 | blog de alto padrão |
| pousada a venda em campos do jordão | 50 | 6 | /pousadas |
| vila abernéssia | 50 | 11 | blog Abernéssia |

## Plano de ação, em ordem
1. **Técnico (1 dia):** aplicar o redirecionamento 301 de www para a versão sem www, colocar canonical nas páginas de busca e filtro e enviar o sitemap no Search Console e no **Bing Webmaster Tools**. O Bing alimenta o ChatGPT Search e o Copilot, e o Copilot está com zero citações.
2. **Páginas de categoria (/casas, /terrenos, /imoveis/locacao, /pousadas):** colocar no topo um texto de 300 a 500 palavras com a mesma receita das fichas do .com (Semrush 9,7 ou mais), mais um bloco de perguntas frequentes com schema FAQPage. Em /terrenos, usar o ZONEAMENTO.md (até 3 construções, 2 pavimentos, Airbnb).
3. **Criar a página "Aluguel em Campos do Jordão"**, separando aluguel mensal de aluguel de temporada. Hoje esses 300 buscas por mês caem na página inicial.
4. **Blog vira guia de bairros:** publicar os 20 bairros do GUIA-BAIRROS.md, um post por bairro, com link para a busca do bairro. Os posts de Abernéssia e Descansópolis já ranqueiam, então o formato funciona.
5. **Ser a fonte das IAs:** publicar `/llms.txt` com o resumo da imobiliária, os bairros e os links das categorias. Usar o schema `RealEstateAgent` + `LocalBusiness` com o mesmo NAP do Perfil da Empresa no Google. Criar uma página "Preço do m² em Campos do Jordão por bairro", atualizada todo mês com dados do Kenlo. As IAs citam números próprios e atualizados, e hoje nenhum concorrente da cidade tem uma página assim.
6. **Medir:** Ahrefs Brand Radar e AI responses todo mês (meta: aparecer no Perplexity e no AI Mode em 60 dias) e Semrush daqui a 4 a 6 semanas.

## Ideia fora da caixa
Transformar cada post de bairro do .net num **Short do YouTube de 45 segundos** (tour de carro pelo bairro mais preço médio do m²), com o link do post na descrição. O vídeo e o texto com o mesmo título reforçam a entidade "bairro + imobiliária" no Google e no Gemini, que leem o YouTube. Assim, 20 bairros viram 20 posts, 20 Shorts e 20 sinais para as IAs.

## Ferramentas recomendadas
- **Ahrefs** (já conectado): Brand Radar para acompanhar as citações em IA e o Rank Tracker para as 15 palavras da tabela.
- **Google Search Console e Bing Webmaster Tools**: indexação e o IndexNow, que avisa o Bing na hora sobre fichas novas.
- **Schema Markup Validator (validator.schema.org) e Teste de pesquisa aprimorada do Google (Rich Results Test)**: validar FAQ e RealEstateAgent.
- **Semrush SEO Writing Assistant**: a mesma régua de 9,7 usada no .com.
