# Auditoria do .net: onde estamos e por onde atacar (11/10/2026)

Este é o documento-mestre do .net. Antes de trabalhar, leia aqui o que já foi feito, para não repetir trabalho.

## 1. Fontes consultadas nesta auditoria
| Fonte | Data do dado | Como foi lida |
|---|---|---|
| Ahrefs Site Audit, projeto **10408013** (.net) | varredura de 05/10, 02h | API (MCP) |
| Ahrefs Site Explorer e AI Responses | 10/10 | API (MCP) |
| Semrush Site Audit, campanha **31393522** | 06/10, 10h47 | e-mail automático |
| Semrush Position Tracking (.net) | 01 a 08/10 | e-mail automático |
| Google Search Console (.net) | setembro/2026 | e-mail mensal |
| PRO Sitemaps (.net) | 10/10, 19h22 | e-mail automático (renovado em 09/10) |
| Repositório (HANDOFF-05-10, análises 01/10 e 11/10) | até 11/10 | arquivos |

**O que não foi possível ler daqui (a rede da nuvem bloqueia):**
- O site ao vivo, com robots.txt, sitemap.xml e HTML.
- DataForSEO: não há conector nesta sessão.
- Os painéis da Semrush e do Search Console: só chegam os e-mails.

**A lista enviada ao Jefferson (GoMóvel) não está no Gmail nem no Drive.** A busca por Jefferson, Jeferson e GoMóvel só trouxe mensagens de 2011 e 2012 da WEBi Solutions. A lista provavelmente foi pelo WhatsApp. **O Roberto precisa colar a lista aqui** para conferirmos item por item.

## 2. Nota de hoje (linha de base)
| Régua | Nota .net | Meta |
|---|---|---|
| Semrush Site Health | **76%** (-1 em 06/10) | 100% |
| Semrush: erros / avisos / notices | 2.655 / 6.679 / 27.832 | 0 / 0 / mínimo |
| Ahrefs Health Score | 100* | 100 |
| Ahrefs: URLs com erro / aviso / notice | 2 / 1.236 / 1.307 (de 1.310) | 0 / 0 / mínimo |
| Search Console, setembro | 663 cliques, 15 mil impressões, 175 páginas novas com impressões | crescer mês a mês |
| Ahrefs orgânico | 42 palavras-chave (14 no top 3), cerca de 217 visitas por mês | 300 ou mais palavras-chave |
| Citações em IA (Ahrefs) | 20 (ChatGPT 2, Gemini 1, AI Overviews 1; Perplexity, Copilot e AI Mode: 0) | presença em todas |
| PRO Sitemaps | cerca de 1,3 mil páginas no sitemap | igual ao total de URLs indexáveis |

\* O Health Score 100 da Ahrefs é enganoso, porque essa nota só pesa os erros (há 2). Os avisos, em 1.236 das 1.310 URLs, são o trabalho real.

**Nota geral ClaudeSEO do .net hoje: 62/100.** É a média ponderada de quatro notas:
- técnico: Semrush 76;
- conteúdo e títulos: 45 (817 títulos longos e 406 duplicados);
- desempenho de busca: 60;
- presença em IA: 25.

## 3. Problemas que ainda restam, por prioridade

### P0: bloqueiam o resto (fazer primeiro)
1. **Robots.txt**: em 06/10 a Semrush acusava "File not available". O Roberto diz que já foi resolvido. Falta conferir ao vivo que o arquivo responde 200 e contém `Sitemap: https://imoveisemcamposdojordao.net/sitemap.xml`.
2. **Sitemap**: a Ahrefs aponta **1.304 páginas indexáveis fora do sitemap**. A varredura dela é de 05/10, anterior às atualizações do PRO Sitemaps de 9 e 10/10. Falta conferir se o sitemap do PRO Sitemaps está publicado na raiz do .net e enviado no Search Console e no Bing Webmaster Tools.
3. **www x sem www**: as duas versões ranqueiam (ver ANALISE-NET-2026-10-11). Escolher a versão sem www e redirecionar a outra com 301.
4. **2 erros 4xx/404** e 1 página com link quebrado (Ahrefs). Há 4 páginas quebradas na Semrush.

### P1: maior ganho por hora de trabalho
5. **888 erros de dados estruturados (markup)**, o maior erro da Semrush. O schema dos imóveis vem quebrado do modelo GoMóvel. A correção é feita uma vez no modelo e resolve as cerca de 888 páginas. É serviço do **Jefferson**.
6. **406 títulos duplicados** e **817 títulos longos** (acima de cerca de 60 caracteres). Corrige-se pelo padrão de título do GoMóvel (Jefferson) e depois com ajuste fino ficha a ficha.
7. **230 páginas com conteúdo duplicado**: fichas com texto igual ou quase igual. A solução é o texto único de cada ficha, com a mesma receita do .com.
8. **394 meta descriptions longas** (mais de 160 caracteres).
9. **391 páginas com mais de um H1**: o modelo GoMóvel precisa ter um H1 só. É serviço do Jefferson.

### P2: velocidade e IA
10. **207 páginas lentas** (+142 desde a varredura anterior) e **53 com resposta lenta para robôs de IA** (+38). Isso piorou. Rever cache, compressão e imagens com o Jefferson e medir no PageSpeed Insights.
11. **216 imagens sem texto alternativo (alt)**: preencher automaticamente no modelo ("Casa à venda no bairro X, Campos do Jordão, foto N").
12. **IndexNow**: 70 páginas alteradas não foram avisadas. Ativar o IndexNow para Bing e Yandex, que alimentam o ChatGPT e o Copilot.
13. **217 páginas com só 1 link interno de entrada**: criar blocos de "imóveis no mesmo bairro" e links das categorias para as fichas.
14. **1 arquivo CSS grande demais** e 1 cadeia de redirecionamentos.

### P3: conteúdo, ficha a ficha (igual ao .com)
15. Reescrever os textos de todas as cerca de 1.300 URLs, com prioridade para as que têm impressões no Search Console. Usar a mesma receita, as mesmas travas e a mesma régua do .com (ver HANDOFF-05-10, seções 2 e 4):
    - Semrush SWA com nota de 9,7 ou mais;
    - DataForSEO com 90 ou mais;
    - Ahrefs sem nenhum aviso que dependa de nós.
16. Páginas de categoria (/casas, /terrenos, /imoveis/locacao, /pousadas), página de aluguel, posts dos 20 bairros, llms.txt e "Preço do m² por bairro" (ver ANALISE-NET-2026-10-11).

## 4. O que o Jefferson corrigiu no GoMóvel (a confirmar)
Pela diferença entre as varreduras, o que já melhorou:
- **Semrush (06/10)**: 904 erros e avisos deixaram de aparecer e os erros caíram 26. Mas apareceram 2.195 novos, e os avisos subiram 1.317. **Alguma mudança no modelo criou avisos em massa**, provavelmente na velocidade e nos títulos.
- **Ahrefs (05/10)**: títulos longos, meta descriptions longas e falta de alt caíram só 4 cada. Ou seja, a correção ainda não pegou em escala, ou é posterior a 05/10.
- **Conclusão**: só dá para dar o veredito item por item com a lista do Jefferson e uma **varredura nova**. A próxima é a primeira ação da fila (seção 5).

## 5. Ordem de ataque (quando o Roberto autorizar)
| # | Ação | Quem | Ferramenta |
|---|---|---|---|
| 1 | Rodar varreduras novas: Ahrefs Site Audit 10408013 e Semrush 31393522 | Claude (Chrome) | Ahrefs e Semrush |
| 2 | Conferir robots.txt e sitemap ao vivo, enviar o sitemap no Search Console e no Bing, ativar o IndexNow | Claude e Roberto | PRO Sitemaps, GSC, Bing WMT |
| 3 | Cruzar a lista do Jefferson com a varredura nova (feito / não feito / piorou) | Claude | planilha |
| 4 | Pacote técnico para o Jefferson: schema, H1 único, padrão de título e meta, alt automático, 301 de www, canonical da busca, velocidade | Jefferson | GoMóvel |
| 5 | Medir todas as URLs (DataForSEO on-page + Ahrefs) e montar o MESTRE-NET.xlsx, como no .com | agentes em paralelo | DataForSEO e Ahrefs |
| 6 | Reescrever os textos ficha a ficha, com prioridade por impressões no GSC | 8 a 9 agentes Fable no Chrome | Semrush SWA |
| 7 | Categorias, bairros, llms.txt e página de preço do m² | agentes de texto | SWA |
| 8 | Medir de novo a cada 2 semanas e atualizar a seção 2 deste arquivo | Claude | todas |

Metas:
- Semrush Site Health de 95% ou mais em 30 dias, e 100% depois do pacote técnico;
- 100% das fichas com SWA de 9,7 ou mais;
- presença no Perplexity e no AI Mode em 60 dias.

## 6. Alerta de segurança encontrado na auditoria
No Google Drive há documentos antigos ("Dados Sites do Roberto.doc", de 2012) com **login e senha do cPanel e do banco de dados do .net e de outros sites, em texto aberto**. Recomendações:
- trocar essas senhas;
- apagar ou proteger esses documentos;
- guardar as senhas num cofre, como Bitwarden ou 1Password.

## 7. Depende do Roberto
1. Colar a **lista enviada ao Jefferson**.
2. Confirmar se o GoMóvel deixa o Claude editar os textos e títulos das fichas pelo painel (como o Kenlo no .com) e mandar o endereço do painel.
3. Autorizar o início, com o número de agentes e o limite de cota.
4. Ver se a sessão do DataForSEO está ativa no computador. Nesta sessão na nuvem não há conector para o DataForSEO.
