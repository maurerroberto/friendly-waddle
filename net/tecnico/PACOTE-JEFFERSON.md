# Pacote técnico para o Jefferson (GoMóvel) – imoveisemcamposdojordao.net

Data: 11/10/2026. Fontes dos números: Ahrefs Site Audit, projeto 10408013 (varredura de 05/10), e Semrush Site Audit 31393522 (06/10), conforme AUDITORIA-NET-2026-10-11.md. Todas as correções são **no modelo** do GoMóvel: arrumando uma vez, valem para todas as páginas.

Arquivos que acompanham este pacote (pasta `net/tecnico/`):
- `robots.txt` – pronto para subir na raiz;
- `schema-modelos.json` – modelos de dados estruturados (JSON-LD).

O `llms.txt` está sendo preparado por outro agente e virá em arquivo separado.

---

## 1. Robots.txt e sitemap (base de tudo)
- **Problema:** em 06/10 a Semrush acusou robots.txt "File not available". A Ahrefs mostra **1.304 páginas indexáveis fora do sitemap**. Páginas de busca (`/Busca`, `/imoveis?pmin=200000`) estão no Google.
- **Afeta:** o site inteiro.
- **O que fazer:**
  1. Subir o arquivo `net/tecnico/robots.txt` em `https://imoveisemcamposdojordao.net/robots.txt` (texto puro, código 200). Ele libera Googlebot, Bingbot, GPTBot, OAI-SearchBot, ChatGPT-User, PerplexityBot, ClaudeBot e Google-Extended, e bloqueia `/Busca`, `/imprimir-*` e URLs com filtro (`?pmin=`, `?pmax=`, `?ordem=` etc.). Se o GoMóvel usar outros nomes de parâmetro de filtro, acrescentar no mesmo formato (`Disallow: /*?nome=` e `Disallow: /*&nome=`).
  2. Sitemap: baixar o `sitemap.xml` gerado pelo PRO Sitemaps (painel do PRO Sitemaps > Download) e publicar em `https://imoveisemcamposdojordao.net/sitemap.xml` (na raiz, via FTP/cPanel ou pelo GoMóvel). Melhor ainda: se o GoMóvel gerar sitemap automático, usar o dele, que inclui fichas novas na hora.
  3. Search Console (propriedade do .net) > Sitemaps > digitar `sitemap.xml` > Enviar.
  4. Bing Webmaster Tools > Sitemaps > Enviar sitemap > `https://imoveisemcamposdojordao.net/sitemap.xml` (dá para importar o site direto do Search Console).
- **Como conferir:** abrir `/robots.txt` e `/sitemap.xml` no navegador (precisam abrir, sem erro). No Search Console o sitemap aparece "Concluído" com cerca de 1,3 mil URLs. Na próxima varredura da Ahrefs, "Indexable page not in sitemap" cai para perto de zero.

## 2. Uma versão só do site: 301 de www e de http
- **Problema:** `https://imoveisemcamposdojordao.net/` e `https://www.imoveisemcamposdojordao.net/` ranqueiam ao mesmo tempo para "imóveis em campos do jordão" (Ahrefs, 10/10). A Ahrefs também acusa 2 redirecionamentos http→https, 3 páginas 3XX e 1 cadeia de redirecionamentos.
- **Afeta:** o site inteiro.
- **O que fazer:** redirecionamento **301 em um passo só** para `https://imoveisemcamposdojordao.net` (sem www):
  - `http://imoveisemcamposdojordao.net/*` → `https://imoveisemcamposdojordao.net/*`
  - `http://www...` e `https://www...` → `https://imoveisemcamposdojordao.net/*` (mantendo o caminho).
  - Exemplo para Apache (.htaccess), se for o caso:
    ```
    RewriteEngine On
    RewriteCond %{HTTPS} off [OR]
    RewriteCond %{HTTP_HOST} ^www\. [NC]
    RewriteRule ^(.*)$ https://imoveisemcamposdojordao.net/$1 [R=301,L]
    ```
  - Todos os links internos, canonical e sitemap devem usar só `https://imoveisemcamposdojordao.net`.
- **Como conferir:** em httpstatus.io, testar `http://www.imoveisemcamposdojordao.net/casas`: tem de dar **um** 301 direto para `https://imoveisemcamposdojordao.net/casas` e depois 200.

## 3. Canonical nas páginas de busca e filtro
- **Problema:** `/Busca` e `/imoveis?pmin=200000` estão indexadas e geram conteúdo duplicado (Ahrefs, 10/10). A Semrush acusa 230 páginas com conteúdo duplicado.
- **Exemplos:** `https://imoveisemcamposdojordao.net/Busca`, `https://imoveisemcamposdojordao.net/imoveis?pmin=200000`.
- **O que fazer:**
  - Toda página com parâmetro de filtro/ordem: `<link rel="canonical" href="https://imoveisemcamposdojordao.net/imoveis">` (ou a categoria correspondente: `/casas`, `/terrenos`...). Página `/Busca`: canonical para `/imoveis` **e** `<meta name="robots" content="noindex, follow">`.
  - Toda página normal: canonical para ela mesma, sem parâmetros, sem www.
- **Como conferir:** "Exibir código-fonte" de `/imoveis?pmin=200000` mostra o canonical para `/imoveis`. No Search Console, Inspeção de URL mostra "Canônico declarado pelo usuário" correto.

## 4. Dados estruturados (schema) completos
- **Problema:** é o **maior erro da Semrush: 888 erros de dados estruturados**. Pela Ahrefs, as fichas só têm `WebPage` e `BreadcrumbList`: não existe nenhuma marcação de imóvel (preço, área, quartos, fotos) nem da imobiliária.
- **Exemplos (só WebPage + BreadcrumbList):**
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-vila-sodipe-1762
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-vila-abernessia-ca0347
  - https://imoveisemcamposdojordao.net/casas
- **O que fazer:** usar os modelos de `net/tecnico/schema-modelos.json`:
  1. **Todas as páginas:** `RealEstateAgent` + `LocalBusiness` (bloco 1). Os campos `{{TELEFONE}}`, `{{RUA_E_NUMERO}}`, `{{CEP}}`, `{{CRECI}}` etc. devem ser preenchidos pelo Roberto **exatamente iguais** ao Perfil da Empresa no Google.
  2. **Fichas:** `RealEstateListing` com `about` do tipo `House` (casa), `Apartment` (apartamento) ou `Place` (terreno), com `floorSize` (m², unitCode MTK), `numberOfRooms`, `address`, `image` (fotos reais), `offers.price` só com números e `priceCurrency: "BRL"`. Se o imóvel não tiver preço publicado, retirar o `price`, nunca colocar 0.
  3. **BreadcrumbList** corrigido: Início > Categoria > Imóvel.
  4. **Categorias** (/casas, /terrenos, /imoveis/locacao, /pousadas): `FAQPage`, só com perguntas que aparecem escritas na página (campo editável no painel).
  5. Corrigir/remover o que hoje gera os 888 erros na Semrush (provavelmente campos vazios ou com texto no lugar de número).
- **Como conferir:** colar 1 ficha, 1 categoria e a home em https://validator.schema.org e https://search.google.com/test/rich-results: zero erros. Na próxima Semrush, "structured data markup errors" perto de zero.

## 5. Título e meta description por tipo de página
- **Problema:** **817 títulos longos** (Ahrefs) e **406 títulos duplicados** (Semrush); **394 meta descriptions longas** (Ahrefs). Todas as categorias usam o mesmo título "Lista completa de imóveis | Imóveis em Campos do Jordão", e a mesma meta de 179 caracteres.
- **Exemplos:**
  - Título longo: `.../imovel-casa-venda-campos-do-jordao-vila-abernessia-ca0347` → "Casa Residencial para Venda Permuta - Campos do Jordão, Vila Abernéssia - REF: CA0347".
  - Título duplicado: `/casas`, `/imoveis/locacao` e `/pousadas` têm o mesmo título.
  - Meta de 179 caracteres: `/`, `/casas`, `/imoveis/locacao`.
  - Atenção: `.../imovel-terreno-venda-campos-do-jordao-cidade-do-sol-1764` mostra "REF: 2037" no título e 1764 no endereço; conferir de onde vem a referência.
- **O que fazer (regras no modelo):**
  - Título até **60 caracteres**, meta até **155**. Se passar, cortar a parte final, nunca a referência.
  - Campo de título e meta **editáveis ficha a ficha** no painel; o padrão abaixo só vale quando o campo estiver vazio.
  - Tirar as palavras "Residencial", "para Venda Permuta" e o nome da cidade repetido.

| Tipo de página | Padrão de título | Exemplo | Padrão de meta |
|---|---|---|---|
| Ficha venda | `{Tipo} {N} dorm. à venda no {Bairro} – {REF}` | Casa 4 dorm. à venda na Vila Abernéssia – CA0347 (48) | `{Tipo} com {N} dorm., {área} m², no {Bairro}, Campos do Jordão. {destaque}. R$ {preço}. Ref. {REF}.` |
| Ficha locação | `{Tipo} para alugar no {Bairro} – {REF}` | Apartamento para alugar no Jaguaribe – AP0184 | `{Tipo} para locação mensal no {Bairro}, Campos do Jordão. {N} dorm., {área} m². Ref. {REF}.` |
| Terreno | `Terreno {área} m² à venda no {Bairro} – {REF}` | Terreno 1.000 m² à venda na Cidade do Sol – 1764 | `Terreno de {área} m² no {Bairro}, Campos do Jordão. {destaque}. Ref. {REF}.` |
| Categoria | `{Categoria} à venda em Campos do Jordão` | Casas à venda em Campos do Jordão (33) | texto próprio de cada categoria, editável |
| Home | `Imóveis em Campos do Jordão – Venda e Aluguel` (44) | – | texto próprio, até 155 |
| Blog | `{título do post}` sem sufixo se passar de 60 | – | resumo do post, até 155 |

  (Os exemplos usam dados das fichas citadas; a área do terreno é ilustrativa e deve vir do cadastro.)
- **Como conferir:** na próxima varredura, "Title too long" e "Meta description too long" perto de zero e "títulos duplicados" na Semrush zerado. Em 3 fichas, contar os caracteres (ex.: wordcounter.net).

## 6. Um H1 só por página
- **Problema:** **391 páginas com mais de um H1** e 1 sem H1 (Ahrefs). O modelo põe um H1 genérico ("Imóveis", "Os melhores imóveis") além do H1 real; na home há um H1 vazio.
- **Exemplos:**
  - `https://imoveisemcamposdojordao.net/` → H1 "Os melhores imóveis" + H1 vazio.
  - `/casas` → "Imóveis" + "Casas".
  - `/imoveis/locacao` → "Imóveis" + "Imóveis para Locação Mensal/Anual".
- **O que fazer:** no modelo, o título de seção genérico vira `<h2>` ou `<p class="...">` (mesma aparência com CSS). Fica um único `<h1>` por página: na ficha, o título da ficha; na categoria, "Casas à venda em Campos do Jordão" etc.; na home, "Imóveis à venda e para alugar em Campos do Jordão". Nunca H1 vazio, nem logo dentro de H1.
- **Como conferir:** extensão "Detailed SEO Extension" ou Ctrl+U e procurar `<h1`: aparece uma vez só. Na Ahrefs, "Multiple H1 tags" zerado.

## 7. Texto alternativo (alt) automático nas fotos
- **Problema:** **216 páginas com imagens sem alt** (Ahrefs).
- **Exemplos:**
  - https://imoveisemcamposdojordao.net/imovel-apartamento-venda-campos-do-jordao-capivari-ap0177
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-vila-abernessia-ca0347
  - https://imoveisemcamposdojordao.net/imovel-casa-venda-campos-do-jordao-vila-telma-ca0334
- **O que fazer:** quando a foto não tiver legenda, gerar: `alt="{Tipo} à venda no {Bairro}, Campos do Jordão – foto {N}"` (ou "para alugar"). Se houver legenda cadastrada ("Sala com lareira"), usar: `"Sala com lareira – {Tipo} no {Bairro}, Campos do Jordão"`. Logo: `alt="Imóveis em Campos do Jordão"`. Ícones decorativos: `alt=""`.
- **Como conferir:** Ctrl+U numa ficha e procurar `alt=""` nas fotos do imóvel: não pode haver. Na Ahrefs, "Missing alt text" zerado.

## 8. Velocidade
- **Problema:** **207 páginas lentas** (+142 desde a varredura anterior) e **53 com resposta lenta para robôs de IA** (+38); 1 arquivo CSS grande demais (Ahrefs).
- **Exemplos lentos:** `/areas-para-incorporacao`, `/hoteis`, `/imoveis/venda`. Lentas para robôs de IA: `/blog/melhores-bairros-de-campos-do-jordao-para-morar-e-comprar-imovel`, `/imovel-casa-venda-campos-do-jordao-vila-nova-suica-2944`, `/imovel-casa-venda-campos-do-jordao-vila-cristina-2340`.
- **O que fazer:**
  1. **Cache no servidor** (cache de página HTML por alguns minutos, ou cache de consulta ao banco) para o tempo de resposta (TTFB) ficar abaixo de 0,6 s.
  2. **Cache no navegador:** `Cache-Control: public, max-age=31536000` para imagens, CSS e JS com versão no nome.
  3. **Compressão** Brotli ou gzip para HTML, CSS, JS, SVG.
  4. **Fotos em WebP** (ou AVIF) com largura certa (`srcset`): miniatura ~400 px, foto grande ~1600 px, qualidade ~75.
  5. **Lazy-load:** `loading="lazy"` em todas as fotos **menos a primeira** (a primeira foto da ficha leva `fetchpriority="high"`). Sempre com `width` e `height`.
  6. **CSS crítico:** colocar no `<head>` só o CSS do topo da página e carregar o resto depois; dividir/minificar o CSS grande. Scripts com `defer`.
  7. Usar CDN (ex.: Cloudflare grátis) se o servidor for lento.
- **Como conferir:** PageSpeed Insights (pagespeed.web.dev) nas 3 URLs de exemplo, celular: LCP abaixo de 2,5 s e nota acima de 80. Na Ahrefs, "Slow page" e "Slow server response for AI crawlers" caindo.

## 9. IndexNow (avisar Bing e Yandex na hora)
- **Problema:** **70 páginas alteradas não foram avisadas ao IndexNow** (Ahrefs). O Bing alimenta o ChatGPT Search e o Copilot (hoje com zero citações).
- **O que fazer:**
  1. Gerar uma chave (32 caracteres, letras e números; em bing.com/indexnow há gerador).
  2. Publicar o arquivo `https://imoveisemcamposdojordao.net/{CHAVE}.txt` contendo só a chave.
  3. Toda vez que uma ficha for criada, alterada ou removida, o GoMóvel faz:
     ```
     POST https://api.indexnow.org/indexnow
     Content-Type: application/json; charset=utf-8
     {"host":"imoveisemcamposdojordao.net",
      "key":"{CHAVE}",
      "keyLocation":"https://imoveisemcamposdojordao.net/{CHAVE}.txt",
      "urlList":["https://imoveisemcamposdojordao.net/imovel-..."]}
     ```
     (ou simplesmente `GET https://api.indexnow.org/indexnow?url={URL}&key={CHAVE}`). Resposta 200 ou 202 = ok.
  4. Alternativa sem programar: se o site passar pelo Cloudflare, ativar "Crawler Hints", que faz o IndexNow sozinho.
- **Como conferir:** Bing Webmaster Tools > IndexNow mostra as URLs recebidas. Na Ahrefs, "Changed pages not submitted to IndexNow" zerado.

## 10. Página 404 e link quebrado
- **Problema:** 1 página 404 e 1 página com link para ela (Ahrefs).
- **Exemplo:** `https://imoveisemcamposdojordao.net/imovel-apartamento-locacao-campos-do-jordao-jaguaribe-ap0184` (404), linkada por `https://imoveisemcamposdojordao.net/blog/alugar-em-campos-do-jordao-como-funciona-o-mercado-de-locacao-anual`.
- **O que fazer:** corrigir o link no post. Regra no modelo: **imóvel vendido/retirado** não deve virar 404 seco: fazer 301 para a categoria do mesmo tipo e bairro (ou `/imoveis/locacao`), ou manter a página com aviso "vendido" e imóveis parecidos.
- **Como conferir:** abrir a URL antiga: redireciona. Na Ahrefs, "404 page" e "Page has links to broken page" zerados.

## 11. Links internos (bloco "Imóveis no mesmo bairro")
- **Problema:** **217 páginas com só 1 link interno** de entrada (Ahrefs).
- **O que fazer:** na ficha, bloco com 4 a 6 imóveis do mesmo bairro e tipo, e link para a categoria do tipo. Nas categorias, paginação em links normais (`<a href>`), não só por JavaScript.
- **Como conferir:** Ahrefs, "Page has only one dofollow incoming internal link" caindo.

## 12. llms.txt
Fica a cargo de outro agente; o arquivo virá pronto para subir na raiz (`/llms.txt`), ao lado do robots.txt.

---

### Checklist rápido para o Roberto
| # | Item | Feito? |
|---|---|---|
| 1 | robots.txt e sitemap na raiz + enviados no GSC e Bing | |
| 2 | 301 www/http em um passo | |
| 3 | canonical na busca/filtros | |
| 4 | schema sem erros no validador | |
| 5 | títulos ≤ 60 e metas ≤ 155, sem duplicados | |
| 6 | 1 H1 por página | |
| 7 | alt automático | |
| 8 | PageSpeed celular > 80 nas 3 URLs | |
| 9 | IndexNow ativo | |
| 10 | 404 corrigido e regra de imóvel vendido | |
| 11 | bloco "mesmo bairro" | |

Depois de tudo pronto: rodar nova varredura na Ahrefs (10408013) e na Semrush (31393522) e comparar com os números deste pacote.
