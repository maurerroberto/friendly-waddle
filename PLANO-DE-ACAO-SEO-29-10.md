# Plano de ação de SEO — imoveisemcamposdojordao.com — 29/10/2026

Para: Roberto e para o Claude no computador do Roberto (quem executa no painel Kenlo).
Base: exportação da Ahrefs de 29/10/2026 (`ahrefs-export/`), com dados do Google Search Console (GSC) de abr. a out./2026, crawl do Site Audit de 26/10/2026 (2.241 URLs), pesquisa de palavras e análise de concorrentes. Contexto: `ANALISE-2026-10-01.md` e `handoff/HANDOFF-05-10.md`.

Como ler os números:
- **GSC** = dado real do Google (cliques, impressões, posição média).
- **Volume de busca, KD, tráfego estimado e DR** = **estimativas da Ahrefs**. Servem para comparar, não são contagem exata. Exemplo: a Ahrefs estima 190–231 visitas/mês para o .com, e o GSC mostra cerca de 870–950 cliques reais.
- "Recomendação" = opinião deste plano, não dado.

---

## 1. Resumo em 10 linhas

1. **Tráfego real (GSC):** de 756 a 949 cliques por mês entre maio e setembro de 2026. Setembro: 867 cliques, 20.871 impressões, posição média 8,0. Outubro (até 27/10): 538 cliques.
2. **As impressões sobem e os cliques não:** o CTR caiu de 5,44% (ago.) para 3,42% (out.). O site aparece mais, mas embaixo na página.
3. **Posições reais no GSC (90 dias):** "imoveis campos do jordão" 4,2; "imobiliaria campos do jordão" 5,0; "casa a venda em campos do jordão" 8,5 (383 impressões, 1 clique); "apartamento a venda em campos do jordão" 9,0; "terreno campos do jordão" 9,4; "aluguel campos do jordão" 10,6.
4. **65% dos cliques e 67% das impressões vêm de palavras na posição 4 a 10.** No próprio site, o CTR é 9,3% na posição 4–6 e só 2,5% na 7–10. Subir 3 ou 4 posições multiplica os cliques.
5. **Concorrência:** os portais (OLX, ZAP, VivaReal, Imovelweb; DR 68–76) ocupam o topo. As imobiliárias locais têm DR de 0 a 5 (só a Capivari tem 24). A dificuldade (KD) é 0 em quase todas as buscas.
6. **A Domani, com DR 0,9, é a imobiliária local com mais tráfego** (estimativa de 1.060/mês). Quase tudo vem de 3 páginas-categoria: casa, aluguel e apartamento.
7. **Por que o 1º lugar é alcançável:** quem ganha é a página-categoria com conteúdo, não a autoridade de links. Na nossa página de casas, os tópicos "perguntas frequentes" e "motivos para investir" têm nota 0. É conteúdo que podemos escrever.
8. **O que hoje divide a nossa força:** 562 listagens com 1 imóvel, 684 títulos duplicados, 142 páginas 404, 52 redirecionamentos que recebem 2.249 links internos e a home em http:// ainda no Google (3.239 impressões em 90 dias).
9. **Ponto fraco local:** o Perfil da Empresa no Google está suspenso. Na busca de 28/10/2026, o pacote do mapa mostra Domani, Altitude e Capivari, e nós não aparecemos.
10. **Prazo:** a busca por casas tem pico em maio (abril a julho acima da média) e a de terrenos em julho. As páginas precisam estar prontas e indexadas até março–abril de 2027.

---

## 2. Ações em ordem de impacto × esforço

Legenda: **Impacto** e **Esforço** (alto / médio / baixo) são avaliação deste plano.
Quem faz:
- **Roberto**
- **Claude (computador)**: usa as sessões já abertas no Chrome. Nunca faz login nem digita senha.
- **Kenlo suporte**: só com ordem do Roberto (regra #36).

Lugares:
- **Painel Kenlo**: cadastro de imóveis e condomínios.
- **Kenlo Sites**: páginas, menu e rodapé. O botão "Publicar" está barrado para o Claude (tarefa #42), então o Roberto publica ou libera.
- **Search Console** (GSC).
- **Perfil da Empresa no Google** (GBP).
- **Fora do site**: diretórios, imprensa e parceiros.

Regras que valem em todas as ações de texto (HANDOFF-05-10, seção 2): só dados reais, nada inventado. Texto medido na Semrush SWA antes de gravar: no mínimo 9,0, com meta de 9,7. Hash igual ao texto medido. Proteção das características das fichas (trava 2). Grafias de bairro da regra #62. Terreno sempre com a seção de zoneamento (regra #261).

---

### (A) Semana 1 — ganhos rápidos (30/10 a 06/11)

#### A1. Mandar à Kenlo um pedido único com todos os ajustes de modelo do site
- **Impacto:** alto. **Esforço:** baixo para nós (a Kenlo executa).
- **O que fazer:** mandar um só chamado com os itens abaixo. O texto pronto está no Anexo A. Juntar com o rascunho do Gmail sobre o cache antigo (central exec #249), se ainda não tiver sido enviado.
- **Por quê (números do relatório):**
  1. **735 páginas que estavam com `noindex` passaram a indexáveis** entre o crawl anterior e o de 26/10 ("Noindex page became indexable": 735; "Noindex page" caiu de 747 para 12). No mesmo período, "Title too long" subiu +396 e "Indexable page not in sitemap" subiu +755. Tudo indica uma mudança no modelo do site. Perguntar à Kenlo o que mudou.
  2. **562 listagens indexáveis mostram só 1 imóvel** e copiam o título da ficha. Pedido: `noindex,follow` em listagens com menos de 2 ou 3 imóveis, e não linkar essas combinações nos blocos "Descubra outras possibilidades", "Bairros mais populares" e "Condomínios mais populares".
  3. **Listagens vazias dão 404 e continuam no menu** (studio, sala, `/imoveis/novos/...`). Pedido: tirar do menu e dos filtros quando não houver estoque, ou responder 200 com "sem imóveis no momento" e `noindex`.
  4. **Duas versões da mesma categoria, cada uma com canonical para si mesma.** Exemplo: `/imoveis/a-venda/casa` (302 casas, a versão que o Google mostra, fora do sitemap) e `/imoveis/a-venda/casa/campos-do-jordao` (294 casas, no sitemap, 1.689 links internos). O mesmo acontece com terreno, apartamento e aluguel. Pedido: escolher uma versão e apontar a outra para ela com canonical. Recomendação: manter a que já aparece no GSC (`/imoveis/a-venda/casa` etc.) e colocá-la no sitemap.
  5. **Título, descrição, H1 e texto das páginas de listagem não são editáveis (a confirmar).** Hoje o título é "302 Casas à venda - Imóveis em Campos do Jordão" e o H1 é "Exibindo 302 Casas à venda". Pedido: campo para editar título, meta description e H1, e um bloco de texto próprio (introdução e perguntas) no topo ou no rodapé das categorias e dos bairros.
  6. **HSTS** (`Strict-Transport-Security`) no domínio. Ver A3.
  7. **Sitemap HTML com 8 links malformados.** `/sitemap/paginas` monta links externos como internos, por exemplo `https://www.imoveisemcamposdojordao.com/https://www.climaaovivo.com.br/...`. São também as 8 páginas "sem H1".
  8. **3 páginas com duas meta descriptions:** `/sitemap`, `/sitemap/paginas` e `/sitemap/condominios`.
  9. **Lentidão de servidor.** 17 URLs passam de 3 s, todas por tempo de resposta do servidor (TTFB). Exemplo: `/imoveis/a-venda/apartamento/campos-do-jordao/residencial-reali-fiori`, com 7,98 s (TTFB 7,81 s). Há também 26 avisos de "resposta lenta para robôs de IA". Lista: `ahrefs-export/extras/tecnico/lentas-acima-3s.csv`.
  10. **Fotos de condomínio sem texto alternativo:** 144 imagens em 11 páginas. Pedido: usar o nome do condomínio como alt padrão.
  11. **Dados estruturados:** 1.600 erros de validação schema.org e 760 de "rich results" do Google (nível aviso). Pedir revisão do modelo.
- **Páginas:** listas em `ahrefs-export/extras/tecnico/` (`listagens-com-1-resultado-indexaveis.csv`, `4xx.csv`, `lentas-acima-3s.csv`, `imagens-sem-alt.csv`, `urls-malformadas-externas.csv`).
- **Onde:** e-mail ou chamado à Kenlo.
- **Quem:** Roberto aprova e envia. O Claude (computador) pode deixar o rascunho no Gmail.
- **Como medir:** resposta da Kenlo. Depois, no GSC, em Indexação > Páginas, o item "Excluída pela tag noindex" sobe e os títulos duplicados caem. No Site Audit da Semrush (seção 4), os 404 e os duplicados caem.

#### A2. Título e meta description das 4 categorias que já ranqueiam
- **Impacto:** alto. **Esforço:** baixo, se o painel deixar editar.
- **O que fazer:**
  1. O Claude abre primeiro `D:\Servidor\_SEO\sites-no-topo\todas-urls\indexacao\paginas_principais_aplicado_05-10.md` (tarefa #42), que pode já ter parte disso pronta.
  2. Depois confere no painel e no Kenlo Sites se existe campo de SEO para as páginas de busca. Se não existir, o item fica para a Kenlo (A1, item 5).
  3. Propostas (até 60 caracteres, palavra principal no começo, número real do estoque no dia):
     - Casas: "Casas à venda em Campos do Jordão – 302 opções com fotos" (atualizar o número).
     - Terrenos: "Terrenos à venda em Campos do Jordão – 161 opções".
     - Apartamentos: "Apartamentos à venda em Campos do Jordão – 179 opções".
     - Aluguel: "Casas e apartamentos para alugar em Campos do Jordão".
  4. A meta description de cada uma fala do diferencial e da faixa de preço real. Exemplo para casas: "R$ 550 mil a R$ 8,6 mi", como a página mostra hoje.
- **Por quê:**
  - `/imoveis/a-venda/casa`: 2.415 impressões e 35 cliques em 90 dias (CTR 1,4%, posição 9,7).
  - `/imoveis/a-venda/terreno`: 488 impressões, CTR 1,0%, posição 8,7. O esperado para essa posição seria 2,5%.
  - `/imoveis/a-venda/apartamento`: 585 impressões, CTR 2,6%, posição 10,2.
  - `/imoveis/para-alugar`: 968 impressões, CTR 5,3%, posição 12,2.
  - Os portais usam o número de imóveis no título, e o nosso título com número é o que melhor ranqueia hoje.
- **Páginas:** `/imoveis/a-venda/casa`, `/imoveis/a-venda/terreno`, `/imoveis/a-venda/apartamento`, `/imoveis/para-alugar`.
- **Onde:** Kenlo Sites ou painel Kenlo. Se não houver campo, a Kenlo faz.
- **Quem:** o Claude (computador) prepara e grava. O Roberto clica em "Publicar" no Kenlo Sites.
- **Como medir:** no GSC, em Desempenho > Páginas, o CTR de cada URL, comparando as 4 semanas antes com as 4 depois. A meta é o CTR passar do "esperado" da posição (2,5% na posição 7–10).

#### A3. Search Console: home http, sitemap, ações manuais
- **Impacto:** médio. **Esforço:** baixo.
- **O que fazer:**
  1. Conferir se existe a **propriedade de domínio** (cobre http e https). Se não existir, o Roberto cria (exige verificação por DNS).
  2. **Inspecionar** `http://www.imoveisemcamposdojordao.com/` e `https://www.imoveisemcamposdojordao.com/`, e pedir indexação da https.
  3. Conferir se o sitemap enviado só tem URLs `https://www`.
  4. Abrir **Segurança e ações manuais**. Isso decide a ação B9 (disavow).
  5. Colocar as 4 categorias e a home no topo da fila da tarefa "indexacao-diaria-com". A cota real é de cerca de 11 pedidos por dia.
  6. Pedir à Kenlo o HSTS (A1, item 6).
- **Por quê:** os redirecionamentos estão certos (301, um salto só, direto para `https://www`). Mesmo assim, o Google ainda mostrou a home em http em 90 dias, com 159 cliques e 3.239 impressões. Em 94 das 723 palavras, a URL principal é a http. A tendência é de queda: as impressões da http foram 2.342 em jul., 1.927 em ago. e 1.109 em set. O HSTS e a reindexação aceleram a consolidação. Observação: a Ahrefs não mede HSTS. É recomendação, não erro medido.
- **Páginas:** home http e https; sitemap XML.
- **Onde:** Search Console; Kenlo suporte (HSTS).
- **Quem:** Claude (computador); o Roberto, se precisar verificar DNS.
- **Como medir:** no GSC, em Desempenho, filtrar a página `http://www.imoveisemcamposdojordao.com/`. As impressões devem ir a zero.

#### A4. Descrições próprias nas páginas institucionais e na de alto padrão
- **Impacto:** médio. **Esforço:** baixo.
- **O que fazer:**
  1. Escrever uma meta description própria para cada página que hoje repete a da home ("Imobiliária em Campos do Jordão desde 2011: casas, apartamentos, terrenos e chácaras..."). São 16 páginas no grupo: `/avalie-seu-corretor`, `/cadastre-seu-imovel`, `/fale-conosco`, `/cadastro-de-locatario`, `/cadastro-de-proposta`, `/financiamento-e-bancos`, `/quem-somos`, `/encomende-seu-imovel`, `/imoveis-de-alto-padrao-em-campos-do-jordao` e as 3 páginas `/sitemap`.
  2. Encurtar o título de `/condominios`, que tem 107 caracteres. Proposta: "Condomínios em Campos do Jordão | Imóveis em Campos do Jordão".
  3. Reescrever título, descrição e texto de `/regularize-seu-imovel`. Hoje a descrição é "É fácil! Preencha os campos abaixo..." (menos de 70 caracteres).
- **Por quê:** há 565 meta descriptions duplicadas, em 267 grupos. `/regularize-seu-imovel` teve 65 impressões em 90 dias e 0 cliques (posição 6,9), para "regularização de imóvel rural em campos do jordão". A página nova de alto padrão (SWA 9,7) está com a descrição da home.
- **Onde:** Kenlo Sites (páginas).
- **Quem:** o Claude (computador) escreve. O Roberto publica.
- **Como medir:** a Semrush Site Audit mostra menos descrições duplicadas. No GSC, os cliques de `/regularize-seu-imovel` passam de 0.

#### A5. Perfil da Empresa no Google (suspenso)
- **Impacto:** alto para as buscas "imobiliária". **Esforço:** baixo, mas depende do Roberto.
- **O que fazer:**
  1. O Roberto escolhe o CEP (`PROJETO-SITES-NO-TOPO.md`): (a) voltar para 12460-000 com "Loja A", como está no cartão do CNPJ (é o recomendado lá), ou (b) manter 12467-012 e anexar um comprovante de endereço.
  2. Depois, enviar a contestação pelo Suporte do Gerenciador, por chat ou e-mail, com a mensagem já redigida, o cartão do CNPJ e a foto da fachada.
  3. Quando voltar ao ar, conferir que o site cadastrado é `https://www.imoveisemcamposdojordao.com/`.
- **Por quê:**
  - As buscas de marca/categoria somam centenas de impressões em 90 dias: "imobiliaria campos do jordão" 441 (posição 5,0), "imobiliária campos do jordão" 354 (4,7), "imobiliarias em campos do jordão" 331 (6,9), "imobiliaria em campos do jordão" 307 (6,1).
  - Na busca de 28/10/2026, o pacote do mapa mostra Domani, Altitude e Capivari. Atenção: o relatório de concorrentes diz que estamos no pacote do mapa, mas essa SERP é de 16/04/2017 e está desatualizada.
  - A ficha do Google também alimenta sites como o wanderlog.com (DR 78), que linka para 3 concorrentes.
- **Onde:** Perfil da Empresa no Google.
- **Quem:** Roberto (a conta é dele). O Claude (computador) pode abrir o chat do suporte com a mensagem pronta, sem fazer login.
- **Como medir:** a ficha volta a "verificada". Toda semana, conferir o pacote do mapa de "imobiliária campos do jordão" pela DataForSEO (seção 4). No próprio Perfil da Empresa, acompanhar as visualizações e os cliques para o site.
- **Importante:** os cadastros em diretórios (B6) devem usar o mesmo nome, endereço e telefone do Perfil. Por isso, decida o CEP antes de começar a B6.

#### A6. Unificar os bairros com nome antigo (corrige redirecionamentos e parte dos 404)
- **Impacto:** alto. **Esforço:** médio.
- **O que fazer:**
  1. No painel Kenlo, achar os imóveis e condomínios ainda cadastrados com o bairro antigo e trocar para o nome atual.
  2. Seguir as regras #62 e #331: renomear um bairro também exige trocar no JSON local e nas menções em outras fichas. Aplicar a trava 2 (características não podem zerar).
  3. Começar pelos que mais recebem links:
     - `pedra-do-fogo` → `condominio-morro-pedra-do-fogo`: 236 links na página do bairro, 211 na de terreno e 403 na de casa.
     - `altos-do-capivari` → `alto-do-capivari`: 224 links, mais 404 na de casa.
     - `vila-abernessia` → `abernessia`: 164 links, mais 404 na de casa.
     - Outros 15 com 7 ou 8 links cada: `jardim-elisabeth`, `vila-matilde`, `vila-jaguaribe`, `jardim-atalaia`, `lot-atalaia`, `parque-agua-santa`, `p-principes`, `chantal-i`, `j-nova-suica`, `parque-ferradura`, `sao-francisco`, `morro-da-pedra-do-fogo`, `jardim-cataguazes` etc.
  4. Corrigir também os bairros que dão 404 e recebem 12 links cada: `villa-americana`, `bairro-do-centro` e `cdhu`.
  5. Conferir as duplicatas que já tinham aparecido em 01/10: `alto-da-vila-inglesa` / `altos-da-vila-inglesa` / `alto-do-vila-inglesa`, `alto-boa-vista` / `alto-da-boa-vista` e `jardim-andira` / `j-andira`.
- **Por quê:** 52 URLs redirecionam e recebem 2.249 links internos. Há 142 páginas 4xx que recebem 239 links, vindos de 60 páginas, entre elas `/avalie-seu-corretor` e `/imoveis/a-venda`, com 5 links quebrados cada. Cada link para uma URL antiga desperdiça força e confunde o Google sobre qual é a página do bairro.
- **Páginas:** `ahrefs-export/extras/tecnico/redirects-3xx.csv`, `4xx.csv`, `paginas-com-links-para-4xx.csv`.
- **Onde:** painel Kenlo (cadastro de bairro do imóvel e do condomínio). Os menus e filtros ficam no Kenlo Sites ou com a Kenlo (A1).
- **Quem:** Claude (computador). "Vila Abernéssia" citada como vizinha em 110 fichas e o título da PO0009 dependem do Roberto (handoff, seção 7).
- **Como medir:** novo crawl na Semrush Site Audit (seção 4): o número de links para redirecionamento e para 404 deve cair perto de zero. No GSC, a URL antiga `/imoveis/campos-do-jordao/vila-abernessia` (17 impressões em 90 dias) some, e as impressões vão para `/abernessia`.

#### A7. O .net: não mexer até o Roberto decidir, mas recuperar o link
- **Impacto:** alto (ver seção 3). **Esforço:** baixo para o link.
- **O que fazer agora:** se o .net for do Roberto, recolocar o link do .net para o .com, que se perdeu em 18/10/2026. Não redirecionar nada antes da decisão.
- **Por quê:**
  - O .net está no projeto 10408013 da mesma conta Ahrefs, com o Search Console conectado. Isso indica que quem tem a conta tem acesso ao GSC do .net, mas só o Roberto pode confirmar.
  - O .net teve 1.003 cliques em mai., 718 em jun., 830 em jul., 767 em ago. e 650 em set.
  - É o nº 1 em "imoveis em campos do jordao" e em "abernéssia" (300/mês, estimativa).
  - É citado 41 vezes em respostas de IA, contra 19 do .com.
  - O menu do .com já linka para `imoveisemcamposdojordao.net/dicionario-imoveis-campos-do-jordao`.
  - Os dois disputam as mesmas buscas.
- **Opções (o Roberto decide):**
  - **(a) Manter os dois, com papéis separados:** o .net vira o blog e os guias (bairros, custo de vida, "vale a pena morar"), com links para as categorias e fichas do .com. O .net deixa de ter listagens próprias de casas e terrenos. Prós: mantém os cliques e as citações em IA do .net, e o .com ganha links de um site com conteúdo. Contras: são dois sites para manter, e a canibalização continua até as listagens do .net saírem.
  - **(b) Redirecionar o .net para o .com (301, página a página):** prós: junta a força dos dois sites num só e acaba com a disputa. Contras: é trabalhoso (135 páginas no GSC do .net) e costuma haver queda temporária durante a migração. O conteúdo do blog precisaria ser recriado no .com, e o Kenlo Sites tem limite de páginas e textos (a confirmar).
  - **(c) Deixar como está:** sem trabalho, mas os dois continuam dividindo as mesmas buscas.
- **Onde:** fora do .com (plataforma do .net).
- **Quem:** o Roberto decide. A execução depende da plataforma do .net (não informada nos relatórios).
- **Como medir:** no GSC das duas propriedades, somar os cliques do .com e do .net todo mês. O objetivo é a soma crescer.

---

### (B) Semanas 2 a 4 (07/11 a 30/11)

#### B1. Conteúdo da categoria Casas à venda (`/imoveis/a-venda/casa`)
- **Impacto:** o maior do site. **Esforço:** médio.
- **O que fazer:** um bloco de texto próprio na página, de 300 a 500 palavras, mais as perguntas frequentes:
  1. **Introdução** com "Casas à venda em Campos do Jordão" e variações naturais ("casa em Campos do Jordão", "casas em Campos do Jordão").
  2. **Principais bairros**, com link para a página de cada um: Capivari, Alto do Capivari, Vila Inglesa, Jardim do Embaixador e Alto da Boa Vista. Dados do `GUIA-BAIRROS.md` e do `guia_bairros.json`.
  3. **Por que investir:** demanda de temporada e regra das 3 construções nos terrenos em que a zona permite (confirmado pelo Roberto em 06/10/2026). Só com fonte.
  4. **Dicas de compra:** clima, isolamento, face do sol, documentação e IPTU.
  5. **Perguntas frequentes** (Anexo C).
  6. **Links** para casas em condomínio, alto padrão (`/imoveis-de-alto-padrao-em-campos-do-jordao`) e terrenos.
- **Grafias:** escrever certo, com acento. O Google trata "jordao" e "jordão" como iguais, e a Ahrefs só mede as formas em separado. "Casas à venda em Campos do Jordão" já cobre "casas a venda em campos do jordao". Não escrever sem acento de propósito. Vale variar casa/casas e com/sem "à venda", porque são buscas diferentes: "casa em campos do jordao", sem "venda", tem 500/mês e estamos fora do top 10.
- **Por quê:**
  - O grupo de buscas de casas soma cerca de 4.800/mês (estimativa da Ahrefs) e estamos em 7º–10º.
  - No GSC (90 dias), as variações de "casa(s) a venda em campos do jordão" passam de 2.000 impressões, com posição 8–10 e CTR de 0 a 2%.
  - Nos tópicos que o Google espera ver, a nossa página tem 0 em "perguntas frequentes" (média do top 10: 9) e 0 em "motivos para investir" (média: 19).
  - "casa em campos do jordão" está em 11º (200/mês) e é a vitória mais próxima.
- **Onde:** depende da resposta da Kenlo (A1, item 5).
  - Se a página aceitar texto: na própria `/imoveis/a-venda/casa`.
  - Se não aceitar: página fixa no Kenlo Sites, no modelo da página de alto padrão, com o mesmo foco e link forte para a listagem. Atenção: duas páginas com o mesmo foco podem disputar entre si. Por isso esse é o plano B, não o A.
- **Quem:** o Claude (computador) escreve e mede na SWA. O Roberto publica (Kenlo Sites) ou a Kenlo cola o texto no modelo.
- **Como medir:** no GSC, consultas que contêm "casa" na página `/imoveis/a-venda/casa`. Meta: posição média de 9,7 para menos de 5 até março. Toda semana, acompanhar a posição na Semrush Position Tracking.

#### B2. Conteúdo da categoria Terrenos (`/imoveis/a-venda/terreno`)
- **Impacto:** alto. **Esforço:** médio.
- **O que fazer:**
  1. Texto com infraestrutura (pavimentação, água, esgoto, energia; só o que tiver fonte).
  2. Potencial de uso: zoneamento por faixa, "confirme a zona na Prefeitura", até 2 pavimentos, até 3 construções onde a lei permitir. Base: `ZONEAMENTO.md`.
  3. Bairros com mais terrenos e perguntas frequentes: terrenos mais baratos, topografia, face do sol.
  4. Título e meta da A2.
- **Por quê:** já somos a melhor imobiliária local em "terreno campos do jordão" (6º na SERP; 250/mês). No GSC, a página tem 488 impressões, CTR 1,0% e posição 8,7. Nos tópicos do Google, temos 0 em "infraestrutura" e 0 em "potencial de investimento". A busca por terreno tem pico em julho (índice 1,71) e fica alta de abril a agosto.
- **Onde, quem e como medir:** igual à B1. No GSC, as consultas com "terreno". Meta: top 5.

#### B3. Aluguel: categoria, por tipo e por prazo (pronto antes do pico de janeiro)
- **Impacto:** alto. **Esforço:** médio.
- **O que fazer:**
  1. Texto próprio em `/imoveis/para-alugar`, que hoje tem 27 imóveis, de R$ 1.500 a R$ 12 mil, e quase só menu e rodapé.
  2. Reforçar `/imoveis/para-alugar/casa` (7 casas) e `/imoveis/para-alugar/apartamento` (18 apartamentos), que já existem: título, meta e texto.
  3. Se o Roberto trabalhar com locação anual ou mensal, criar uma página fixa "Casas para alugar em Campos do Jordão para morar (anual/mensal)", separada da temporada. Se ele trabalhar com temporada, uma página própria de temporada (decisão na seção 3).
- **Por quê:**
  - Aluguel é o maior grupo de buscas: 2.760/mês somados (estimativa).
  - No GSC: "aluguel campos do jordão" 283 impressões, posição 10,6, CTR 1,8%; "aluguel em campos do jordão" 151 impressões, posição 12,3; "casa para alugar em campos do jordão" 98 impressões, posição 12,3.
  - `/imoveis/para-alugar/casa` aparece com posição média 60,7 (57 impressões, 0 cliques).
  - A César & Sant'Anna lidera "casa para alugar", "mensal" e "baratas" com uma só listagem.
  - Buscas por prazo: "casas para alugar mensal em campos do jordão" 100, "kitnet para alugar em campos do jordão anual" 40 (estimativas).
  - O aluguel tem pico em janeiro (índice 1,31) e em maio.
- **Onde:** Kenlo Sites e painel (texto das categorias); Kenlo suporte, se o campo não existir.
- **Quem:** o Claude (computador) escreve e mede. O Roberto publica e informa se faz locação anual, mensal ou de temporada.
- **Como medir:** no GSC, as consultas com "alugar" ou "aluguel". Meta: sair da posição 10–12 para o top 5 em janeiro.

#### B4. Apartamentos à venda (`/imoveis/a-venda/apartamento`)
- **Impacto:** alto. **Esforço:** médio.
- **O que fazer:** a página já existe e tem 179 apartamentos, então não é preciso criar outra.
  1. Dar a ela título e meta (A2).
  2. Texto sobre os bairros com prédios: Capivari, Jaguaribe, Vila Everest e Alto do Capivari. O Claude confere no cadastro onde estão os apartamentos.
  3. Perguntas frequentes: valor de um apartamento, onde achar mais barato, potencial de aluguel por temporada.
  4. Infraestrutura do condomínio: aquecimento, lareira, vagas.
  5. Link na home e no menu.
- **Por quê:** o grupo de apartamentos soma 1.120/mês (estimativa) e estamos fora do top 10 em "apartamento campos do jordão" (250) e "apartamento em campos do jordão" (200). O nº 1 é a Domani (DR 0,9). No GSC, a página tem 585 impressões, posição 10,2 e CTR 2,6%. O pico é de abril a julho.
- **Onde, quem e como medir:** igual à B1. No GSC, consultas com "apartamento". Meta: entrar no top 10 e depois no top 5.

#### B5. Títulos e H1 duplicados nas fichas e nas listagens
- **Impacto:** médio. **Esforço:** médio.
- **O que fazer:**
  1. **Fichas:** seguir a fila T6 do `FILA-CORRECAO-05-10.json` (34 títulos repetidos). O crawl de 26/10 mostra 32 fichas com título repetido, por exemplo "Casa à venda no Alto da Boa Vista em Campos do Jordão" em CA0072, CA0438, CA0243 e CA0306. Pares do handoff: TE0090/TE0132, CA0096/CA0299/CA0340, TE0095/TE0104, TE0148/TE0206, TE0029/TE0175. Acrescentar um diferencial real (quartos, m², vista, condomínio). Regra #194: palavra principal e H1 únicos por ficha.
  2. **Listagens:** a correção é a da Kenlo (A1, item 2). Não escrever texto próprio para as 562 listagens de 1 imóvel. Recomendação: `noindex,follow` nelas. A exceção são bairros e condomínios com busca (C1, C2), que ganham conteúdo mesmo com poucos imóveis.
- **Por quê:** 684 títulos duplicados (208 grupos) e 680 H1 duplicados. Exemplo: as listagens `/imoveis/a-venda/casa/serra-negra`, `/imoveis/serra-negra` e `/imoveis/a-venda/serra-negra` têm o mesmo título da ficha "Casa de 973 m² Serra Negra...". As três disputam com a própria ficha.
- **Onde:** painel Kenlo (título das fichas, com `txTituloSite` e o procedimento da trava 3); Kenlo suporte (listagens).
- **Quem:** Claude (computador); Kenlo.
- **Como medir:** a Semrush Site Audit mostra os títulos duplicados caindo. Meta: menos de 50 depois da correção da Kenlo.

#### B6. Citações locais e links que os concorrentes têm (lista do LINK-GAP)
- **Impacto:** médio a alto. **Esforço:** médio (é trabalho manual, de pouco em pouco).
- **Por quê:** sem o spam, cada imobiliária local tem só de 20 a 45 domínios de referência. Os nossos únicos links vivos com valor real são guiacamposjordao.com.br (DR 24) e odp.org (DR 38). O relatório estima que 10 a 15 links locais reais bastam para termos o perfil de links mais forte entre as imobiliárias locais (só Capivari, DR 24, e Leardi, DR 38, estão acima). Isso é estimativa, não garantia.
- **Regra de ouro:** usar nome, endereço, telefone e site (`https://www.imoveisemcamposdojordao.com/`) **iguais aos do Perfil da Empresa**. Por isso, decidir o CEP (A5) antes.
- **Quem:** o Roberto cria as contas (o Claude não faz login nem cria senha). O Claude (computador) prepara um texto padrão da empresa, com descrição curta e longa, categorias e links das categorias, para colar em cada cadastro, e confere depois se o link apareceu.

| # | Site | DR | Quem dos concorrentes tem | O que fazer |
|---|---|---|---|---|
| 1 | telelistas.net | 60 | Capivari, .net, Juarezz, Leardi | Cadastro grátis da empresa com site, telefone e endereço |
| 2 | guiame.com.br | 67 | Opção, Cadij | Cadastro na categoria imobiliárias de Campos do Jordão |
| 3 | magicpin.com | 32 | 8 locais (Domani, Capivari, César, Altitude...) | Criar ou reivindicar a ficha da empresa com o link |
| 4 | misterwhat.com.br | 31 | Capivari, Montanhês, Opção, Luxury | Cadastro grátis |
| 5 | benditoguia.com.br | 26 | 7 (Capivari, Muratori ×2, Leardi, Opção, Cadij...) | Cadastro na categoria imobiliárias de Campos do Jordão |
| 6 | netcampos.com | 26 | Muratori, Opção | Portal de Campos do Jordão: contato para anúncio, parceria ou artigo sobre o mercado local |
| 7 | listatudo.com.br | 24 | .net, Juarezz, Leardi | Cadastro grátis |
| 8 | cuiket.com.br | 19 | Capivari, .net, Montanhês, Leardi | Perfil de anunciante com link |
| 9 | urlm.com.br | 9 | 10 locais | Página de análise automática: ver se o domínio já tem página e pedir cadastro |
| 10 | linktr.ee | 94 | Muratori, Altitude, Leardi, ZAP, VivaReal | Criar o Linktree do Instagram apontando para o site e as categorias |
| 11 | wanderlog.com | 78 | Capivari, Altitude, Marco Muratori | Não tem cadastro: a ficha vem do Google Maps. Depende do Perfil da Empresa (A5) |
| 12 | crunchbase.com | 91 | Leardi, ZAP, VivaReal | Perfil grátis da empresa com o site |
| 13 | guiacalt.com.br e tournacity.com.br | 0 | Capivari, Domani, Leardi | Cadastro rápido, de baixo valor. Fazer por último |
| 14 | cps.sp.gov.br | 72 | Leardi, ZAP, VivaReal | Parceria com a ETEC local: estágio, palestra ou curso (mês 2–3) |
| 15 | sebrae.com.br | 86 | ZAP, VivaReal | Conteúdo ou caso em parceria com o Sebrae-SP regional (mês 2–3) |
| 16 | expat.com | 72 | ZAP, VivaReal | Cadastrar a empresa no diretório "Housing" do Brasil |
| 17 | olx.com.br | 76 | ZAP, VivaReal | Página de anunciante com link para o site. O link tende a não passar força (nofollow), mas traz visitas |
| 18 | r7.com, estadao.com.br, infomoney.com.br | 82–87 | ZAP, VivaReal | Imprensa: dados próprios (preço por bairro, tempo de venda) como pauta. Só com dados reais (mês 2–3) |

Não vale a pena: datanyze.com e rocketreach.co (perfis automáticos), portaldofranchising.com.br (só para franquias), comunidades.net (baixo valor), real49.com.br (verificar antes) e os 31 marcados como spam ou diretório automático no CSV.

**Links que tivemos e perdemos (pedir de volta):**
- guiaimobiliarias.com: DR 29, 12 links, perdidos em abr./2023.
- camposdojordao.com: DR 19, perdido em 2016.
- curlie.org: DR 70, o diretório que substituiu o DMOZ, perdido em 2020.
- imobiliariasnet.com.br (DR 19) e imobiliarias.wiki.br (DR 12).
- O .net: perdido em 18/10/2026 (A7).

- **Onde:** fora do site.
- **Como medir:** planilha simples com site, data do cadastro e se o link apareceu. Todo mês, conferir os links no Ahrefs Webmaster Tools (grátis) e no relatório "Links" do GSC.

#### B7. Hubs Santo Antônio do Pinhal e São Bento do Sapucaí
- **Impacto:** médio. **Esforço:** médio. O estoque é pequeno.
- **O que fazer:** transformar as listagens que já existem em páginas com texto próprio:
  1. Na introdução, deixar claro que a imobiliária atende a cidade.
  2. Tipos de imóvel e bairros com estoque.
  3. Distância de Campos do Jordão, só com fonte.
  4. Aluguel em destaque em São Bento, porque é o que mais se busca lá.
  5. Título sem o "5 Imóveis encontrados...".

  Prioridade: o Roberto confirma se atende essas cidades ativamente (seção 3).
- **Por quê:** Santo Antônio do Pinhal soma 1.820/mês em buscas e São Bento do Sapucaí 1.290/mês (estimativas, incluindo aluguel e temporada). Exemplos: "terreno santo antonio do pinhal" 100, "casa para alugar em santo antônio do pinhal" 100, "casa para alugar em são bento do sapucaí" 150. O pico das duas cidades é de **janeiro a março** (índice 1,36 em janeiro), por isso entra agora e não no mês 2–3. Hoje a página de Santo Antônio do Pinhal tem 7 impressões em 90 dias.
- **Páginas:** `/imoveis/santo-antonio-do-pinhal` (5 imóveis), `/imoveis/a-venda/terreno/santo-antonio-do-pinhal` (4), `/imoveis/sao-bento-do-sapucai` (9), `/imoveis/a-venda/casa/sao-bento-do-sapucai` (3). As listagens de 1 imóvel dessas cidades seguem a regra da B5.
- **Onde:** depende da Kenlo (texto em listagem). Plano B: página fixa no Kenlo Sites.
- **Quem:** o Claude (computador) escreve. O Roberto publica.
- **Como medir:** no GSC, as consultas com "pinhal" ou "sapuca". Hoje há poucas impressões, e qualquer subida aparece rápido.

#### B8. Bairros e condomínios em `noindex`, órfãs e imagens sem alt
- **Impacto:** baixo a médio. **Esforço:** baixo.
- **O que fazer:**
  1. **9 páginas de bairro ou condomínio com `noindex`:** jardim-cataguases, velden-village, parque-da-ferradura, jardim-do-pai, edificio-mantiqueira, luz-do-sol, le-verbier-village-residence, vila-nova e imbiry. Há buscas no GSC por "velden village" e "edificio mantiqueira". Descobrir no Kenlo por que estão com `noindex` (talvez por poucos imóveis) e o Roberto decide quais indexar. Há 3 redirecionamentos que levam a páginas `noindex` (jardim-cataguazes, parque-ferradura, imbiri).
  2. **4 fichas órfãs** (sem nenhum link interno): TE0200, CA0125, CA0434 e CA0153. Ver se estão ativas. Se estiverem, falta bairro ou tipo para aparecerem nas listagens. Se estiverem inativas, tirar do sitemap.
  3. **144 imagens sem alt em 11 páginas:** 10 fichas de condomínio, como Quatre Saisons (31), Edifício Belvedere (21), H Marques (16) e Village Embaixador (15), e `/fale-conosco` (1). Preencher a legenda ou descrição das fotos no cadastro do condomínio, se o campo existir. Se não existir, entra na A1, item 10.
  4. `/politica-de-privacidade` está com `noindex` e mesmo assim está no sitemap. Pedir à Kenlo para tirar do sitemap.
- **Onde:** painel Kenlo; Kenlo suporte.
- **Quem:** o Claude (computador) investiga e corrige o que for de cadastro. O Roberto decide o item 1.
- **Como medir:** a Semrush Site Audit mostra as imagens sem alt e as órfãs em zero.

#### B9. Spam de backlinks e arquivo de disavow (rejeição de links)
- **Impacto:** provavelmente baixo. **Esforço:** baixo.
- **Os fatos:**
  - Dos 840 domínios que linkam para o site, 817 estão marcados como spam pela Ahrefs. Dos 849 grupos de links, 824 são spam.
  - As âncoras são textos de "SEO shop", como "Premium SEO Authority Backlinks..." (283 domínios).
  - **Os concorrentes recebem a mesma rede de spam** (`seo-high-ranking.shop`, `*.seoexpress.store`...). Não é um ataque contra nós.
  - O DR (nota da Ahrefs, não do Google) caiu de 3,2 para 2,2 em out./2026, e para 0,4 em 29/10.
- **O que fazer:**
  1. Na A3, olhar **Ações manuais** no GSC.
  2. **Se não houver ação manual (o mais provável):** recomendação de não enviar disavow agora. O Google em geral ignora sozinho esse tipo de link, e a ferramenta foi feita para casos de penalidade ou de links comprados.
  3. **Se houver ação manual:** enviar o disavow por domínio com os 817 domínios marcados como spam. O arquivo sai de `ahrefs-export/site-explorer-referring-domains.csv` (`is_spam = 1`), revisado à mão para não incluir youtube.com, guiacamposjordao.com.br, odp.org e outros bons.
- **Prós do disavow:** é um seguro barato, e a lista já está pronta.
- **Contras do disavow:**
  - Risco de rejeitar por engano um link bom.
  - O efeito não é medível. Não muda o DR da Ahrefs, que é outra empresa.
  - Novos domínios de spam aparecem toda semana, então o arquivo nunca fica completo.
- **Onde:** Search Console (ferramenta de rejeição de links).
- **Quem:** o Roberto decide. O Claude (computador) monta o arquivo, se ele pedir.
- **Como medir:** ações manuais em zero. A posição das buscas principais não piora.

#### B10. Velocidade (servidor Kenlo)
- **Impacto:** médio. **Esforço:** baixo para nós (é do lado da Kenlo).
- **Os fatos:**
  - A Ahrefs marcou 1.071 páginas como "lentas", mas só 17 passam de 3 s no crawler.
  - A mediana é de 1,04 s de carga e 0,91 s de resposta do servidor. O tempo é quase todo de servidor, não de peso da página.
  - O HTML das listagens chega a 300–640 KB.
  - Na DataForSEO, a nota da página para em 92,95 por causa da "carga lenta" (−7,05), que vem do modelo da Kenlo.
  - Não há dados de Core Web Vitals no Site Audit da Ahrefs.
- **O que fazer:**
  1. Mandar a lista das 17 URLs na A1, item 9.
  2. No GSC, abrir o relatório **Core Web Vitals** (grátis) e o PageSpeed Insights das 4 categorias e da home, e anotar o valor inicial.
- **Quem:** o Claude (computador) mede. O Roberto envia à Kenlo.
- **Como medir:** relatório Core Web Vitals do GSC, uma vez por mês.

---

### (C) Mês 2 e 3 (dezembro e janeiro), antes do pico de abril a julho

#### C1. Páginas de bairro com mais busca
- **Impacto:** médio a alto. **Esforço:** alto (muitas páginas).
- **O que fazer:**
  1. Texto próprio na página de listagem do bairro, ou página fixa se a Kenlo não liberar o campo: perfil do bairro, pontos importantes, distância do Capivari (com fonte) e faixa de preço real do estoque.
  2. Links para os tipos de imóvel do bairro e para as categorias.
  3. Título sem o "14 Imóveis encontrados...".
  4. Base: `GUIA-BAIRROS.md`, `guia-bairros/*.md` e `poi_bairros.json`. O que estiver em "Pontos não confirmados" não entra.
  5. Ordem pelos dados:

| Bairro | Página que já existe | Buscas (estimativa Ahrefs) | Situação no GSC (90 dias) |
|---|---|---|---|
| Capivari / Vila Capivari | `/imoveis/campos-do-jordao/vila-capivari` (84 imóveis) | "capivari campos do jordão" 1.500; "vila capivari campos do jordão" 1.100. Intenção mais turística | 33 impressões, posição 39,6. Há também `/capivari` com 11 impressões: decidir qual é a principal |
| Vila Inglesa | `/imoveis/campos-do-jordao/vila-inglesa` (15) | "vila inglesa campos do jordão" 400; "vila inglesa" 500 | 6 impressões. Juntar as duplicatas `alto-da-vila-inglesa` / `altos-` / `alto-do-` (A6) |
| Abernéssia | `/imoveis/campos-do-jordao/abernessia` (14) | "abernéssia campos do jordão" 200; "vila abernéssia" 100. O .net é o 1º em "abernéssia" (300) | 82 impressões, 0 cliques, posição 13,8 |
| Alto da Boa Vista | `/imoveis/campos-do-jordao/alto-da-boa-vista` (27) | 150 | 51 impressões, posição 25,2 |
| Alto do Capivari | `/imoveis/campos-do-jordao/alto-do-capivari` (47) | 100 | Poucas impressões |
| Vale Encantado | `/imoveis/campos-do-jordao/vale-encantado` (12) | 200 (lacuna; VivaReal em 5º) | 1 impressão |
| Jardim Véu da Noiva | `/imoveis/campos-do-jordao/jardim-veu-da-noiva` (14) | "condominio veu da noiva campos do jordao" 40 + 10 | 198 impressões, posição 5,8, CTR 1,0% (o esperado seria 9,3%) |
| Jardim Elizabeth | `/imoveis/campos-do-jordao/jardim-elizabeth` (6) | 60; já estamos em 11º | Juntar com `jardim-elisabeth` (A6) |
| Descansópolis | `/imoveis/campos-do-jordao/descansopolis` (39) | 50 + 40 | 11 impressões |

  Também aparecem com cliques zerados no GSC: Vila Nadir (91 impressões, posição 8,3), Jardim Sumaré (79; 9,2), Cidade do Sol (72; 7,3), Floresta Negra (55; 10,3) e Vila Cláudia (52; 9,3).
- **Por quê:** quase não existe busca por "casa à venda + bairro" (volume 0 na Ahrefs para as 52 combinações). O volume está no nome puro do bairro. A página de bairro funciona como apoio e leva a pessoa para as categorias.
- **Onde:** Kenlo (campo da Kenlo) ou Kenlo Sites.
- **Quem:** o Claude (computador) escreve e mede na SWA. O Roberto publica.
- **Como medir:** no GSC, o CTR e a posição de cada página de bairro. Meta: Véu da Noiva, Abernéssia e Vila Nadir com cliques maiores que 0 em 60 dias.

#### C2. Páginas de condomínio
- **Impacto:** médio. **Esforço:** médio.
- **O que fazer:**
  1. **Vila Holandesa:** não temos página. A Ahrefs dá 700/mês para "vila holandesa campos do jordão" (volume do último mês, na lista de lacunas) e 40/mês para "condominio vila holandesa campos do jordão" (média de 12 meses). Os números divergem; considere entre 40 e 700. Só a Altitude ranqueia (6º). **Só criar se houver imóvel nosso lá** (pergunta na seção 3).
  2. **Iporanga:** a página `/imoveis/campos-do-jordao/iporanga` (21 imóveis) já existe. Tem 44 impressões e posição 8,5. Buscas: "condominio iporanga campos do jordão" 80 + 20 + 20 + 10. Dar texto próprio e título.
  3. **Villa Real** (30 + 10 + 10) e Véu da Noiva (C1).
  4. Terminar os **textos de 39 condomínios** que já estavam na fila (campo `txDescricoes`; testar a gravação antes).
  5. Linkar as fichas de condomínio a partir de `/condominios` e das páginas de bairro. Há 75 páginas a 3 ou mais cliques da home, como Palácio de Buckingham e Mon Palais Mes Amis.
- **Por quê:** ZAP e VivaReal ranqueiam com páginas de condomínio. Nenhum concorrente local tem página dedicada e completa para cada condomínio.
- **Onde:** painel Kenlo (cadastro do condomínio); Kenlo Sites.
- **Quem:** Claude (computador); o Roberto confirma o estoque.
- **Como medir:** no GSC, as consultas com "condominio" ou "condomínio".

#### C3. Guias que respondem às perguntas do Google e da IA (depende da decisão sobre o .net)
- **Impacto:** médio. **Esforço:** médio.
- **O que fazer:** se o .net for mantido como blog (A7, opção a), os guias ficam lá, com links para o .com. Se não, criar no .com (Kenlo Sites):
  1. "Bairros de Campos do Jordão" (hub). Buscas: "bairros de campos do jordão" 100, "bairros perigosos em campos do jordão" 100, "mapa dos bairros" 40.
  2. "Morar em Campos do Jordão": custo de vida, IPTU, clima, distância de SP, segurança. "iptu campos do jordão 2026" tem 150 e "morar em campos do jordão" 40.
  3. "Quanto custa uma casa em Campos do Jordão", com as faixas reais do estoque por bairro.
- **Por quê:** o .net é citado 41 vezes em respostas de IA, contra 19 do .com, e a explicação é o conteúdo editorial que ele tem. As perguntas do Google nas buscas de compra são: preço de uma casa, melhor bairro, valor de um apartamento e custo de vida.
- **Quem:** Claude (computador); o Roberto publica.
- **Como medir:** no GSC, as consultas informativas ("bairros", "morar", "iptu"). Citações em IA: conferir na Semrush, se o plano tiver, ou à mão, uma vez por mês.

#### C4. Alto padrão, chácaras e sítios, pousadas
- **Impacto:** médio. **Esforço:** médio.
- **O que fazer:**
  1. Reforçar a página que já existe, `/imoveis-de-alto-padrao-em-campos-do-jordao`: meta própria (A4) e links da categoria de casas. Buscas: "mansões campos do jordão" 100, "mansões em campos do jordão" 90, "mansão campos do jordão" 60. O pico é em junho e dezembro.
  2. Dar texto às categorias de chácara, sítio e fazenda. `/imoveis/a-venda/fazenda` tem 43 impressões e posição 15,3. Nenhuma imobiliária local está no top 10 de "chacara a venda em campos do jordão".
  3. Pousadas e hotéis: `/imoveis/a-venda/hotel` já está em 10º, com 47 impressões e CTR 6,4%. "pousada a venda em campos do jordão" tem 50.
- **Quem e onde:** igual à C1.
- **Como medir:** GSC, consultas e páginas.

#### C5. Revisão geral em fevereiro e março
- Conferir que tudo está indexado (inspeção de URL no GSC). Atualizar os números de estoque nos títulos. Medir de novo na Semrush e na DataForSEO.
- Publicar ou atualizar as categorias de compra entre **março e abril**. Terrenos até junho.

#### Onde entra a fila de reotimização das fichas
No relatório de páginas do GSC (90 dias), as fichas somam 1 clique e 69 impressões. A home teve 496 cliques e as listagens 132. Os textos novos são recentes e o Google demora semanas para reindexar, então ainda é cedo para julgar as fichas. Mesmo assim, os dados mostram que o ganho maior agora está nas categorias.

Recomendação:
- Fazer as categorias (B1 a B4) antes de retomar a fila.
- Na volta, fazer só a prioridade 1 (106 fichas com nota até 9,4).
- Deixar a prioridade 2 (175 fichas com 9,5–9,6) para depois do pico. O próprio handoff diz que o retorno ali é baixo.

---

## 3. O que depende de decisão do Roberto

1. **Kenlo:** você aprova mandar o pedido único da A1 (Anexo A)? E o e-mail sobre o cache antigo já foi enviado?
2. **Perfil da Empresa no Google:** qual CEP: (a) 12460-000 com "Loja A" ou (b) 12467-012 com comprovante? Autoriza enviar a contestação ao suporte?
3. **O .net é seu?** Se for, qual caminho: (a) blog e guias ligados ao .com, (b) redirecionar tudo para o .com ou (c) deixar como está?
4. **Kenlo Sites:** você libera o "Publicar" para o Claude ou prefere publicar você mesmo cada página?
5. **Disavow:** se o GSC não mostrar ação manual, concorda em **não** enviar o arquivo agora?
6. **Aluguel:** você faz locação anual ou mensal? E de temporada? Isso define as páginas da B3.
7. **Região:** você atende ativamente Santo Antônio do Pinhal e São Bento do Sapucaí? Hoje há 5 e 9 imóveis.
8. **Condomínios:** tem ou pode captar imóveis no Vila Holandesa? Quer destaque para Iporanga e Villa Real?
9. **Bairros em `noindex`:** quais dos 9 (B8) devem aparecer no Google?
10. **Diretórios:** você cria as contas (o Claude não faz login)? Qual e-mail e telefone usar em todos?
11. **Fichas:** concorda em deixar as 175 fichas com nota 9,5–9,6 para depois do pico?

---

## 4. Como acompanhar (sem a Ahrefs)

### Toda semana (15 minutos), às segundas
| O que olhar | Onde | Valor de partida |
|---|---|---|
| Cliques, impressões, CTR e posição média do site (últimos 7 dias contra os 7 anteriores) | **Search Console** > Desempenho | Semanas de out.: cerca de 204–226 cliques, 5.759–6.690 impressões, CTR 3,4–3,5% |
| As 4 categorias (cliques, CTR, posição) | GSC > Desempenho > Páginas | Casas: 2.415 impressões, CTR 1,4%, posição 9,7. Terrenos: 488, 1,0%, 8,7. Apartamentos: 585, 2,6%, 10,2. Aluguel: 968, 5,3%, 12,2 (90 dias) |
| Home em http | GSC > Páginas > `http://www...` | 3.239 impressões em 90 dias. A meta é zero |
| Posição de cerca de 30 buscas-alvo (lista abaixo) | **Semrush Position Tracking** (plano Guru), localização Campos do Jordão, celular e computador | Criar o projeto agora. O Rank Tracker da Ahrefs nunca teve palavras |
| Pacote do mapa em "imobiliária campos do jordão" e top 10 de 10 buscas principais | **DataForSEO** (API de SERP, saldo pré-pago) | Hoje: Domani, Altitude e Capivari no mapa. Usar poucas buscas para poupar saldo |

### Todo mês
| O que olhar | Onde |
|---|---|
| Páginas indexadas e motivo das excluídas ("noindex", "duplicada", "404") | GSC > Indexação > Páginas |
| Core Web Vitals (celular) | GSC > Core Web Vitals |
| Ações manuais e segurança | GSC |
| Links novos e perdidos (citações da B6) | GSC > Links e **Ahrefs Webmaster Tools** (grátis para site verificado) |
| Crawl técnico: 404, redirecionamentos, títulos e descrições duplicados, imagens sem alt | **Semrush Site Audit** (ou o Site Audit grátis do Ahrefs Webmaster Tools) |
| Nota dos textos novos antes de gravar | **Semrush SWA** (régua do projeto) |
| Nota on-page das páginas alteradas | **DataForSEO** `on_page/instant_pages` (teto atual de 92,95 por causa do servidor da Kenlo) |
| Soma de cliques do .com e do .net | GSC das duas propriedades |

### Buscas-alvo para cadastrar no Position Tracking (posição de partida no GSC, 90 dias)
- **Casas:** "casa a venda em campos do jordão" (8,5), "casas a venda em campos do jordão" (8,8), "casa a venda campos do jordao" (8,7), "casas a venda campos do jordão" (9,1), "casa em campos do jordão" (8,2), "casas em campos do jordão" (9,9), "casa em campos do jordao" (fora do top 10 na Ahrefs), "casa campos do jordao".
- **Terrenos:** "terreno campos do jordão" (9,4), "terreno em campos do jordão" (8,8), "terreno a venda em campos do jordão" (7,6), "terrenos em campos do jordão" (8,6).
- **Apartamentos:** "apartamento campos do jordão", "apartamento em campos do jordão", "apartamento a venda em campos do jordão" (9,0), "apartamentos a venda em campos do jordão" (7,9).
- **Aluguel:** "aluguel campos do jordão" (10,6), "aluguel em campos do jordão" (12,3), "casa para alugar em campos do jordão" (12,3), "casas para alugar em campos do jordão", "apartamento para alugar em campos do jordão" (10,3), "casas para alugar mensal em campos do jordão".
- **Marca:** "imobiliária campos do jordão" (4,7), "imobiliarias em campos do jordão" (6,9), "imoveis campos do jordão" (4,2), "imóveis em campos do jordão".
- **Bairros e região:** "condominio veu da noiva campos do jordao" (5,7), "abernessia imoveis" (5,8), "condominio iporanga campos do jordão", "terreno santo antonio do pinhal", "casa para alugar em são bento do sapucaí".

Observação: o GSC guarda 16 meses e é a fonte real. Os dados de GSC vistos pela Ahrefs só começam em abr./2026.

---

## Anexo A — Texto para o pedido à Kenlo (o Roberto revisa e envia)

> Assunto: Ajustes de SEO no site imoveisemcamposdojordao.com
>
> Olá, equipe Kenlo. Fizemos uma auditoria técnica do site em 26/10/2026 e pedimos os ajustes abaixo, que são do modelo do site:
> 1. Entre a auditoria anterior e a de 26/10, 735 páginas que estavam com noindex passaram a ser indexáveis. Houve mudança na configuração? Pedimos que listagens com menos de 2 imóveis voltem a ter "noindex, follow" (hoje são 562 listagens com 1 imóvel, que copiam o título da ficha).
> 2. Não linkar combinações vazias ou de 1 imóvel nos blocos "Descubra outras possibilidades", "Bairros mais populares" e "Condomínios mais populares".
> 3. Listagens sem estoque (studio, sala, /imoveis/novos/...) dão 404 e continuam no menu e nos filtros. Pedimos que saiam do menu quando não houver imóveis, ou que respondam 200 com "noindex".
> 4. Cada categoria existe em duas versões com canonical para si mesma (ex.: /imoveis/a-venda/casa e /imoveis/a-venda/casa/campos-do-jordao). Pedimos um canonical único e que essa versão esteja no sitemap XML.
> 5. Campo para editar título, meta description, H1 e um bloco de texto nas páginas de listagem (categorias, bairros e cidades). Hoje o H1 é "Exibindo 302 Casas à venda".
> 6. Ativar o HSTS (Strict-Transport-Security) no domínio.
> 7. O sitemap HTML (/sitemap/paginas) monta links externos como internos (8 URLs do tipo https://www.imoveisemcamposdojordao.com/https://...).
> 8. As páginas /sitemap, /sitemap/paginas e /sitemap/condominios têm duas meta descriptions. A /politica-de-privacidade tem noindex e está no sitemap.
> 9. 17 páginas levam mais de 3 s para responder, quase tudo de tempo de servidor (ex.: /imoveis/a-venda/apartamento/campos-do-jordao/residencial-reali-fiori, 7,8 s). Segue a lista.
> 10. Usar o nome do condomínio como texto alternativo padrão das fotos (144 imagens sem alt em 11 páginas de condomínio).
> 11. Revisar os dados estruturados (1.600 avisos de validação schema.org).
>
> Obrigado.

Anexar: `ahrefs-export/extras/tecnico/listagens-com-1-resultado-indexaveis.csv`, `4xx.csv`, `lentas-acima-3s.csv`, `urls-malformadas-externas.csv`, `imagens-sem-alt.csv`.

---

## Anexo B — O que a Ahrefs não mediu (não tratar como fato)
- HSTS, Core Web Vitals (a integração PageSpeed não estava ativa) e visitas do Web Analytics (o script não estava instalado).
- Rank Tracker sem nenhuma palavra cadastrada.
- Brand Radar (é um add-on pago).
- SERP de "imobiliária campos do jordão" de 2017, que está desatualizada.
- Volumes abaixo de 100 são arredondados. A sazonalidade de "casas a venda em campos do jordão" parece modelada pela Ahrefs, não medida.

---

## Anexo C — Perguntas para as perguntas frequentes (de onde vêm e onde usar)

As respostas só podem usar dados com fonte: estoque do Kenlo, Prefeitura, IBGE, guia de bairros. Não prometer "estrelas" ou destaque no Google por causa das perguntas frequentes. Elas servem para cobrir o que o Google e a IA procuram.

**Categoria Casas (B1)**, perguntas que o Google mostra nas buscas de compra:
- Qual o valor de uma casa em Campos do Jordão? / Qual é o valor médio? (responder com a faixa real do estoque no dia; em 26/10 era de R$ 550 mil a R$ 8,6 mi)
- Qual o melhor bairro para morar em Campos do Jordão?
- Qual é o bairro mais rico de Campos do Jordão?
- Quanto custa morar em Campos do Jordão? / Qual o custo de vida?
- Qual é o estilo das casas de Campos do Jordão?
- Dá para comprar uma casa com 100 mil reais? / Quanto custa uma casa simples? (responder com o menor preço real do estoque)
- Dá para comprar direto com o proprietário? ("casas à venda em campos do jordão direto com proprietário": 60/mês)
- Como é o IPTU? ("iptu campos do jordão 2026": 150/mês)

**Categoria Terrenos (B2):**
- Quais são os terrenos mais baratos à venda em Campos do Jordão?
- O que posso construir no terreno? (zoneamento por faixa e "confirme na Prefeitura")
- Topografia e face do sol: o que observar?

**Categoria Apartamentos (B4):**
- Qual é o valor de um apartamento em Campos do Jordão?
- Onde encontrar apartamento mais barato?
- Dá para alugar por temporada?
- Onde encontrar apartamentos para alugar? (link para a B3)

**Guia "Morar em Campos do Jordão" (C3),** com volume na Ahrefs:
- Quantos habitantes tem Campos do Jordão? (600)
- Qual a altitude? (200)
- Quantos km de São Paulo? (150)
- Campos do Jordão neva? (100)
- Qual a melhor época para ir? (60)
- Campos do Jordão é caro? (40)
- Campos do Jordão é seguro? (20)
- Qual o mês mais barato?

---

## Anexo D — Palavras usadas neste plano
- **Título (title):** o texto azul que aparece no Google.
- **Meta description:** o texto cinza embaixo do título.
- **H1:** o título principal dentro da página.
- **CTR:** de cada 100 pessoas que veem o site no Google, quantas clicam.
- **noindex:** aviso para o Google não mostrar a página. "follow" quer dizer que ele continua seguindo os links dela.
- **Canonical:** aviso de "a versão principal desta página é aquela".
- **301:** redirecionamento permanente de um endereço antigo para o novo.
- **404:** página que não existe.
- **Pacote do mapa (local pack):** os 3 negócios com mapa que aparecem no topo das buscas locais.
- **Disavow:** lista enviada ao Google pedindo para ignorar certos links.
- **DR:** nota de força de links da Ahrefs, de 0 a 100. Não é uma nota do Google.
