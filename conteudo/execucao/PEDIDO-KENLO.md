# Pedido único à Kenlo — texto final para o Roberto enviar

Preparado em 02/11/2026 a partir do Anexo A do `PLANO-DE-ACAO-SEO-29-10.md`, revisado com os dados do crawl de 26/10/2026 (`ahrefs-export/extras/tecnico/` e `site-audit-issues.csv`).

**Não foi enviado.** Regra #36: chamado à Kenlo só com ordem do Roberto. O Claude no computador pode deixar como rascunho no Gmail se o Roberto pedir; quem envia é o Roberto.

Antes de enviar, o Roberto confere:
1. **O e-mail do cache antigo (gocache) já foi enviado?** (handoff 05/10, central exec #249). Se não foi, deixe o item 13 no texto. Se já foi, apague o item 13.
2. **CEP escolhido** para o Perfil do Google (ver `PERFIL-GOOGLE.md`): preencha no item 12.
3. **Cidades vizinhas:** se a imobiliária atende Santo Antônio do Pinhal e São Bento do Sapucaí, mantenha a frase entre colchetes do item 2; se não, apague.
4. Os anexos da lista no fim estão no computador (pasta do projeto).

---

**Para:** suporte / atendimento Kenlo (o canal que o Roberto já usa)
**Assunto:** Site imoveisemcamposdojordao.com — ajustes técnicos de SEO no modelo (lista única)

Olá, equipe Kenlo.

Fizemos uma auditoria técnica do site **https://www.imoveisemcamposdojordao.com** (crawl de 26/10/2026, 2.241 URLs). Os pontos abaixo são do modelo do site e não conseguimos ajustar pelo painel. Pedimos, por favor, uma resposta item a item (feito / não é possível / prazo). As listas completas de URLs vão em anexo.

**1. Listagens com 1 imóvel e mudança de noindex**
Entre a auditoria anterior e a de 26/10, **735 páginas que tinham "noindex" passaram a ser indexáveis** (o total de páginas noindex caiu de 747 para 12). Houve alguma mudança de configuração nesse período?
Hoje há **562 listagens indexáveis que mostram só 1 imóvel** e copiam o título da ficha. Exemplo: `/imoveis/a-venda/casa/serra-negra`, `/imoveis/serra-negra` e `/imoveis/a-venda/serra-negra` têm o mesmo título da ficha ("Casa de 973 m² Serra Negra..."). Pedimos:
- "noindex, follow" em listagens com menos de 2 imóveis;
- se possível, uma lista de exceções que nós indicamos (bairros e condomínios que queremos manter no Google).
Anexo: `listagens-com-1-resultado-indexaveis.csv`.

**2. Cada categoria existe em duas versões, cada uma com canonical para si mesma**
Exemplos:
- `/imoveis/a-venda/casa` (302 casas; é a que aparece no Google, mas está fora do sitemap) e `/imoveis/a-venda/casa/campos-do-jordao` (294 casas; está no sitemap);
- `/imoveis/a-venda/terreno` e `/imoveis/a-venda/terreno/campos-do-jordao`;
- `/imoveis/a-venda/apartamento` e `/imoveis/a-venda/apartamento/campos-do-jordao`;
- `/imoveis/para-alugar` e `/imoveis/para-alugar/campos-do-jordao` (há também `/imoveis/para-alugar/campos-do-jordao/campos-do-jordao` e `/imoveis/a-venda/campos-do-jordao/campos-do-jordao`).
Pedimos: a versão curta (`/imoveis/a-venda/casa` etc.) como principal, a versão `/campos-do-jordao` com canonical para ela, e a versão curta no sitemap XML. [A versão curta mostra também imóveis de outras cidades (302 x 294 casas); para nós isso está ok.] Anexo: `e-categorias-duplicadas.csv` (27 pares).

**3. Listagens sem imóveis dão 404 e continuam linkadas**
São 142 URLs com erro (141 com 404 e 1 com 410), que recebem 239 links internos de 60 páginas. Exemplos:
- no menu e nos filtros: `/imoveis/a-venda/studio/campos-do-jordao`, `/imoveis/a-venda/sala/campos-do-jordao`, `/imoveis/para-alugar/sala/campos-do-jordao` (14 links cada);
- listagens "novos": `/imoveis/novos/campos-do-jordao/vila-capivari` (9 links) e mais 24 URLs `/imoveis/novos/...`;
- bairros sem página: `/imoveis/campos-do-jordao/villa-americana`, `/imoveis/campos-do-jordao/bairro-do-centro`, `/imoveis/campos-do-jordao/cdhu` (12 links cada);
- filtros de tipo sem estoque dentro das páginas de bairro: `/imoveis/campos-do-jordao/edificio-mantiqueira` tem 24 links quebrados, por exemplo para `/imoveis/sitio/campos-do-jordao/edificio-mantiqueira`.
Pedimos: não exibir no menu, nos filtros e nos blocos as opções sem imóvel, ou fazer essas páginas responderem 200 com "sem imóveis no momento" e "noindex". Anexos: `4xx.csv` e `paginas-com-links-para-4xx.csv`.

**4. Blocos de links automáticos**
Pedimos que os blocos "Descubra outras possibilidades", "Bairros mais populares" e "Condomínios mais populares" não linkem combinações vazias ou com 1 imóvel (itens 1 e 3).

**5. Título, meta description, H1 e texto nas páginas de listagem**
Hoje o título é gerado ("302 Casas à venda - Imóveis em Campos do Jordão") e o H1 é "Exibindo 302 Casas à venda". Pedimos um campo para editar **título, meta description, H1 e um bloco de texto próprio** (introdução e perguntas frequentes) nas categorias, nos bairros e nas cidades. Se o campo já existe, por favor nos digam onde fica.
Também há H1 sem espaço entre o número e a palavra em 8 páginas, por exemplo `/imoveis/a-venda/terreno/campos-do-jordao` ("153Terrenos à venda...") e `/imoveis/para-alugar/casa/campos-do-jordao` ("7Casas para alugar...").
E o título de `/condominios` tem 107 caracteres ("Apartamentos, Casas, Apartamentos duplex, Terrenos, ..."). Se não for editável por nós, pedimos trocar por "Condomínios em Campos do Jordão | Imóveis em Campos do Jordão".

**6. HSTS**
Pedimos ativar o cabeçalho `Strict-Transport-Security` no domínio. Os redirecionamentos de http para https já estão certos, mas o Google ainda mostra a home em http.

**7. Sitemap HTML com links externos montados como internos**
A página `/sitemap/paginas` gera 8 links do tipo `https://www.imoveisemcamposdojordao.com/https://www.climaaovivo.com.br/sp/campos-do-jordao` (também com goo.gl/maps, presconinformatica.com.br, camposdojordao.sp.gov.br e imoveisemcamposdojordao.net). No menu da home os mesmos links estão corretos. Anexo: `urls-malformadas-externas.csv`.

**8. Links para endereços antigos de bairro (redirecionamentos)**
52 URLs que redirecionam recebem 2.249 links internos, em cerca de 850 páginas. Exemplos: `/imoveis/campos-do-jordao/pedra-do-fogo` → `/imoveis/campos-do-jordao/condominio-morro-pedra-do-fogo`; `/imoveis/campos-do-jordao/altos-do-capivari` → `/alto-do-capivari`; `/imoveis/campos-do-jordao/vila-abernessia` → `/abernessia`. Nós estamos corrigindo o bairro no cadastro dos imóveis. Pedimos confirmar se os blocos de links passam a usar o endereço novo sozinhos depois disso, ou se é preciso atualizar algo do lado de vocês. E `/imoveis/campos-do-jordao/parque-agua-santa` redireciona com **302**; deveria ser 301. Anexo: `a-redirecionamentos-urls.csv`.

**9. Meta descriptions duplas e sitemap XML**
- `/sitemap`, `/sitemap/paginas` e `/sitemap/condominios` têm **duas** meta descriptions cada.
- `/politica-de-privacidade` está com "noindex" e mesmo assim aparece no sitemap XML.

**10. Texto alternativo (alt) das fotos de condomínio**
144 imagens sem alt em 11 páginas, quase todas fichas de condomínio, por exemplo `/condominio/quatre-saisons-apartamentos-e-apartamentos-duplex-campos-do-jordao-1-a-3-quartos-1-a-325-m/18391970-JRLM` (31 fotos sem alt). Pedimos usar o nome do condomínio como alt padrão das fotos (ex.: "Quatre Saisons – foto 1"), ou nos indicar o campo para preencher. Anexo: `imagens-sem-alt.csv`.

**11. Tempo de resposta do servidor**
17 páginas levaram mais de 3 segundos, quase tudo de tempo de resposta do servidor (TTFB). Exemplos: `/imoveis/a-venda/apartamento/campos-do-jordao/residencial-reali-fiori` (7,98 s; TTFB 7,81 s), `/imovel/apartamento-campos-do-jordao-3-quartos/AP0234-JRLM` (7,71 s), `/imoveis/campos-do-jordao/vila-real` (6,65 s). A auditoria também apontou 26 avisos de resposta lenta para robôs de IA. Anexo: `lentas-acima-3s.csv`.

**12. Dados estruturados**
A auditoria apontou 1.600 avisos de validação schema.org e 760 de validação de rich results do Google. Pedimos uma revisão do modelo. Pedimos também conferir se o endereço do schema da imobiliária (RealEstateAgent na home) está igual ao nosso cadastro: Av. Frei Orestes Girardi, 1423, Loja A, Vila Abernéssia, Campos do Jordão/SP, CEP **[_____-___]**, telefone (12) 3662-6039.

**13. Cache antigo fora do Brasil** *(apagar este item se o e-mail sobre o cache já foi enviado)*
Fora do Brasil, inclusive para o Googlebot, o site ainda mostra cópias antigas das páginas (cache), então as correções demoram a chegar ao Google. Pedimos verificar a configuração do cache/CDN.

Ficamos à disposição para enviar mais exemplos.

Obrigado,
Roberto Maurer
Imóveis em Campos do Jordão — J.R.L. Maurer & Cia Ltda — CRECI 23458-J
(12) 3662-6039

---

## Anexos (o Roberto anexa ao e-mail)

Da pasta `ahrefs-export/extras/tecnico/`:
- `listagens-com-1-resultado-indexaveis.csv` (item 1)
- `4xx.csv` e `paginas-com-links-para-4xx.csv` (item 3)
- `urls-malformadas-externas.csv` (item 7)
- `lentas-acima-3s.csv` (item 11)
- `imagens-sem-alt.csv` (item 10)

Desta pasta (`conteudo/execucao/`):
- `e-categorias-duplicadas.csv` (item 2)
- `a-redirecionamentos-urls.csv` (item 8)

## Como acompanhar a resposta
- Registrar a data do envio e o número do chamado.
- Quando a Kenlo responder, marcar cada item como feito / não é possível / prazo.
- Depois das mudanças: novo crawl na Semrush Site Audit (404, redirecionamentos, títulos e descrições duplicados devem cair) e, no Search Console, Indexação > Páginas ("Excluída pela tag noindex" deve subir).
