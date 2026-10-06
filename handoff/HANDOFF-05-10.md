# Passagem de trabalho — .com no topo (ATUALIZADO 05/10/2026 ~21h, pausa em 94% da cota semanal)

> **LEIA PRIMEIRO A SEÇÃO 9 (atualização final).** Ela substitui os números e a fila das seções 3 e 6. O resto do documento (regras, ferramentas, passo a passo, armadilhas) continua valendo integralmente.

Documento para outra conta/sessão do Claude Code continuar **exatamente daqui**, sem reler o que já foi lido e sem refazer o que já foi feito. Tudo abaixo foi conferido nos arquivos e na central em 05/10.

---

## 0. Antes de qualquer coisa (5 minutos)

1. Leia `D:\Central\PROTOCOLO.md` (regras da central) e rode, **pela ferramenta Bash, um comando por vez, sem cd/&&/|/;**:
   - `py -3 D:/Central/central.py retomar site-com` → ponto de retomada **#341** (vale mais que este documento se houver diferença, porque outras conversas também escrevem lá).
   - `py -3 D:/Central/central.py reservas` → ver se outra conversa está mexendo no Kenlo.
2. Confira o uso: o trabalho foi **pausado por ordem do Roberto ao chegar em ~90% da cota semanal** (semanal 87%, Fable 100%; renovam sexta 10/10 ~11h). Não retome antes de ele mandar.
3. Nunca faça login nem digite senha. Kenlo, Semrush, Search Console, Gmail e Geopix usam as sessões já abertas no Chrome do Roberto (extensão Claude in Chrome). Se pedir login, pare e avise.

---

## 1. O que o Roberto pediu (decisões da central)

- **#64 (05/10):** fazer em **todas as URLs** do https://www.imoveisemcamposdojordao.com o mesmo que foi feito na mansão CA0312: medir em **Ahrefs, DataForSEO e Semrush**, achar todos os pontos fracos, corrigir (painel Kenlo, Search Console e o que for preciso) até nota acima de **9 / 90**, uma por uma, sem parar.
- **#65 (05/10):** máximo de agentes (inclusive Fable), banda liberada; textos no padrão já usado (terreno com lei de zoneamento; bairro com pontos turísticos, restaurantes, escolas, farmácias, igrejas etc.); pontos fracos técnicos também (velocidade, H1 repetido…). **O que não der para melhorar fica separado para o Roberto no fim.**
- **#340 (regra, 05/10):** a reotimização com esforço médio só vale com **revisão completa depois** (ver seção 5).
- Regras antigas que continuam: #47 (nota mínima), #62 (grafias de bairro), #36 (nada de chamado novo à Kenlo sem ordem do Roberto), #194 (palavra principal/H1 única por ficha), #59 (área da prefeitura/Geopix), #261 (terreno nunca perde a seção de zoneamento).

---

## 2. Regra da nota para gravar (o mais importante)

Régua oficial do **texto** = **Semrush SEO Writing Assistant (SWA)**, nota 0–10, medida no **mesmo texto simples** que vai para o Kenlo.

| Situação | O que fazer |
|---|---|
| Ficha nova ou sem texto medido | Escrever, medir, **gravar só com ≥ 9,0**; meta **9,7 com tudo verde** |
| Ficha já publicada abaixo de 9,7 (reotimização) | Gravar se ficar **≥ 9,7**, ou **≥ 9,0 e pelo menos 0,2 acima** da nota publicada. Se não melhorar, **não grava** |
| Não chega a 9,0 só com dado real | **Não grava**; marca `separar: true` + `faltam_dados` no JSON e vai para o Roberto |
| Esforço por ficha | até 2–3 ajustes guiados pelo painel da Semrush; depois grava a melhor versão válida ou separa |

Travas que valem sempre, sem exceção:
1. **Hash:** o texto do editor da Semrush tem de ser idêntico ao arquivo local (`js\aux\swa_hash.js` x `hash_txt.py`). Nunca gravar texto diferente do medido.
2. **Proteção dos dados da ficha (achado grave de 05/10, central #338):** gravações automáticas de título/descrição às vezes **zeravam área, quartos, suítes, banheiros e vagas**. Agora, antes de cada envio compara-se o formulário vivo com o do servidor, e depois do envio compara-se servidor antes x depois; se qualquer característica mudar, repõe na hora. Script: `D:\Servidor\_SEO\sites-no-topo\todas-urls\correcao\p12_repor_caracteristicas.js` (funções `__serverDoc`, `__prep3`, `__verif2`).
3. **Título no Kenlo:** `txTituloSite` com `jQuery('#txTituloSite').trigger('focusout')`, `hdAutomaticTitle='false'`, `hdTitleUpdated='true'`, `rbUsarTituloSiteSim` — senão o Kenlo volta o título automático minutos depois. Até 60 caracteres.
4. **Só vale** resposta `{"type":"Dialog"}` de `imovel-acao.aspx`; `Alert` = não gravou (anote e siga). Conferir sempre por recarga.
5. **Nada inventado:** área, preço, quartos, distância, "vista", "arborizado", zona do lote — tudo com fonte.

Outras réguas (por URL):
- **DataForSEO** `onpage_score` (0–100), modo da mansão: `POST /v3/on_page/instant_pages` com `enable_javascript`, `enable_browser_rendering`, `load_resources`, `accept_language: pt-BR`. **Teto atual 92,95**: a "carga lenta" (−7,05) é do modelo da Kenlo.
- **Ahrefs:** o Page Rating é autoridade de link relativa (ficha fica em ~20), então "acima de 90" não se aplica a ficha. Critério usado: **zero erro/aviso da Ahrefs que dependa de nós** naquela URL.

---

## 3. Onde estamos (números de 05/10, 19h40)

**Textos das fichas (Semrush):**
- 650 fichas publicadas com nota: **293 com ≥ 9,7**, **357 entre 9,0 e 9,6**, **0 abaixo de 9**. Menor do site 9,1; maior 9,9.
- Hoje (05/10): **80 fichas gravadas e conferidas** (51 reotimizadas + 29 novas/medidas), notas de 9,4 a 9,7 (45 com 9,7).
- **Falta reotimizar ~322 fichas** abaixo de 9,7 → lista em `D:\Servidor\_SEO\sites-no-topo\todas-urls\reotimizar_restantes_05-10b.json` (pule as que já tiverem `reotimizado: true` no JSON).
- **ATENÇÃO — 22 fichas preparadas e NÃO publicadas:** os preparadores sem navegador reescreveram o `texto_simples` local de 22 fichas (campo `"preparado_offline": "2026-10-05"`). O texto que está no site é o do campo **`texto_publicado_antes`**. Ao retomar: medir o texto preparado na Semrush antes de gravar; se não for gravar, **volte `texto_simples` para `texto_publicado_antes`** (senão o local fica diferente do painel e alguém pode regravar errado).
- Separadas para o Roberto: ver `D:\Servidor\_SEO\sites-no-topo\todas-urls\textos_rodada_05-10.md` e a seção "05/10 rodada nota máxima" no fim de `D:\Claude roberto@imoveisem\PERGUNTAS-ROBERTO.md`.

**Medição de todas as URLs (pronta):** `D:\Servidor\_SEO\sites-no-topo\todas-urls\RESUMO-05-10.md` (resumo), `MESTRE-05-10.xlsx` / `.json` (uma linha por URL com as 3 notas, pontos fracos e dono), `FILA-CORRECAO-05-10.json` (ações em ordem).
- DataForSEO: **1.210 de 1.253 URLs ≥ 90** (média 92,1).
- Ahrefs: **642 de 1.253** sem erro/aviso nosso (o maior ponto, cartão do corretor em 607 fichas, depende do OK do Roberto — item P2).

**Indexação (Search Console):**
- Fila: `D:\Servidor\_SEO\sites-no-topo\todas-urls\indexacao\FILA-INDEXACAO-COM.json` (629 URLs por prioridade). Cota real ≈ **11 pedidos/dia somando as duas propriedades**.
- Tarefa agendada **"indexacao-diaria-com"** (todo dia 08:30, roda com o app aberto) — roteiro em `indexacao\ROTINA-DIARIA.md`. Não precisa fazer à mão.
- Cobertura: `indexacao\COBERTURA-05-10.md`.

**Feito hoje, não refazer:**
- 33 fichas com área/quartos zerados repostas (`correcao\p12_areas_05-10.json`); conferência de 144 fichas mexidas hoje: todas OK (`correcao\confere_hoje_05-10.json`).
- Grafias de bairro (#62) corrigidas no painel em 12 fichas; JSON locais sincronizados com o painel (66) e campos `descricao` / `_texto_simples.txt` alinhados.
- Geopix aplicado em 13 fichas; 3 nomes de condomínio corrigidos; 7 itens da Letícia; CSS do logo do rodapé; legendas de CA0576 e TE0033.
- Página nova no ar: https://www.imoveisemcamposdojordao.com/imoveis-de-alto-padrao-em-campos-do-jordao (SWA 9,7, fatos conferidos).
- Rascunho para a Kenlo sobre o cache no Gmail (o Roberto envia).

---

## 4. Como cada coisa é feita (passo a passo e ferramentas)

### 4.1 Ferramentas
| Ferramenta | Para quê | Como |
|---|---|---|
| Central (`py -3 D:/Central/central.py`) | memória comum, decisões, registro de cada execução | só pela ferramenta Bash, comando único |
| Extensão **Claude in Chrome** (`mcp__claude-in-chrome__*`) | Kenlo (painel e Kenlo Sites), Semrush SWA, Search Console, Gmail | cada agente cria **as próprias abas** (`tabs_create_mcp`) e só usa as suas |
| **DataForSEO** (`mcp__dataforseo__api_request`) | nota on-page por URL, SERP | não usa o IP do Roberto (o site tem WAF) |
| **Ahrefs** (MCP `site-audit-*`) | varredura do site, issues por URL | projeto **10408012** |
| Python local (`py -3 -X utf8`) | scripts da pasta `D:\Claude roberto@imoveisem` | `precheck_swa.py`, `preparar.py`, `gerar_js_kenlo.py`, `hash_txt.py`, `trocar_local.py` |
| **Workflow** do Claude Code | rodar muitos agentes em paralelo | scripts em `D:\Servidor\_SEO\sites-no-topo\todas-urls\workflows\` |

### 4.2 Reotimizar uma ficha (o trabalho principal que falta)
Pasta: `D:\Claude roberto@imoveisem`. Manual completo: **`PLAYBOOK-MEDIDOR.md`** (leia inteiro, com as lições do fim) + `PROMPT-REDATOR.md` (fórmula por tipo) + `INSTRUCOES-RODADA-300.md` (bairro e zoneamento).
1. Abrir `textos\<REF>.json` (título, texto, palavras-chave). Pular se `reotimizado: true`, ou se `separar: true` por conflito/ficha fora do site.
2. `py -3 -X utf8 preparar.py <REF>` → gera `js\<REF>.swa.js` (cola na Semrush) e `js\<REF>.kenlo.js`.
3. Semrush: abrir `https://www.semrush.com/swa/checker` (documento novo), rodar `document.documentElement.setAttribute('translate','no')`, palavras-chave com `js\aux\swa_keywords_enter.js`, público Brasil/Português (`js\aux\swa_publico_br.js` ou `_oculta`), colar o texto.
   - Aba em segundo plano **não tira print**; para a nota recalcular: `q.insertText(1,' ','user')` e `q.deleteText(1,1,'user')` (q = `document.querySelector('.ql-container').__quill`), esperar ~20 s, ler o painel pelo ancestral do texto "Smart Writer" (`js\aux\swa_ler2.js`). Abas do painel = `span[aria-pressed]`; **nunca clicar em elemento com texto "SEO"** (vai para o menu).
4. Ajustar pelo painel (alvo de palavras ±2%, legibilidade perto do alvo, frases difíceis, recomendadas verdadeiras). Cada troca vai também para o arquivo local (`js\aux\R_<REF>.json` + `trocar_local.py`). Conferir hash.
5. Gravar no Kenlo pela regra da seção 2 (recarregar a ficha no máximo 1 min antes, conferir `#hdTxReferencia`, backup em `textos\<REF>_backup.json`, proteção das características, só Dialog, conferir por recarga).
6. Atualizar o JSON (`nota_swa`, `doc_swa`, `nota_anterior`, `publicado_em`, `reotimizado: true`) e `central checkpoint`.

### 4.3 Como foi paralelizado
- Workflow com agentes **Fable** no navegador, **no máximo 8–9 ao mesmo tempo** (com mais, o Chrome passa a recusar abas — central #188), lotes de 4 fichas.
- Agentes **sem navegador** podem preparar textos antes (fórmula + `precheck_swa.py` até APROVADO), para o medidor só medir e gravar.
- Script pronto para relançar: `workflows\` (o último foi `reotimizar-restantes-rapido-com`, run `wf_118d3d1c-4fe`). Em outra conta, monte um workflow novo com a lista de `reotimizar_restantes_05-10b.json` filtrando `reotimizado: true`.
- **Depois da reotimização (regra #340):** revisor com esforço alto em TODA ficha regravada: fatos x cadastro/API/pontos do bairro/guia, gramática e concordância, grafias da #62, zoneamento em terreno, nota registrada x documento da Semrush, características intactas. Reprovou → volta para correção.

### 4.4 Fontes de dados de cada texto
- Cadastro/API: `D:\Servidor\_SEO\sites-no-topo\fichas100\dados_api_com_29-09.json` (`property_full_reference` = `<REF>-JRLM`).
- Pontos do bairro: `D:\Claude roberto@imoveisem\poi_bairros.json` (chave = bairro sem acento, minúsculo) e `busca_poi.py`.
- Guia de bairros: `D:\Servidor\_SEO\sites-no-topo\fichas100\guia_bairros.json` e `GUIA-BAIRROS.md`.
- Zoneamento (só terreno/área): `D:\Servidor\_SEO\sites-no-topo\zoneamento\zoneamento.json` — nunca dizer a zona; dar a faixa e "confirme a zona na Prefeitura".
- IDs do Kenlo: `D:\Claude roberto@imoveisem\kenlo_ids.json`.

---

## 5. Armadilhas já conhecidas (não repetir)

1. **Cache gocache:** fora do Brasil (inclusive o Googlebot e o DataForSEO) o site mostra cópias antigas (central #299). Pedir indexação/medir só depois de conferir pelo **teste ao vivo** do Search Console que o título novo já chegou.
2. **WAF do site:** nada de curl em rajada no www.imoveisemcamposdojordao.com (bane o IP). Use DataForSEO ou 1 requisição a cada 10 s.
3. **Características zeradas** nas gravações (seção 2, trava 2).
4. **Grafias de bairro:** o JSON local tem de estar igual ao painel; renomear bairro = trocar também no JSON local e nas menções em outras fichas (central #331). Imbiry ainda depende do Roberto.
5. **Kenlo Sites (páginas, rodapé, menu):** o "Publicar" foi barrado pelo classificador do Claude Code ("Production Deploy", erro #42). Não contornar; é do Roberto liberar ou fazer à mão (tarefa #42, 9 passos em `indexacao\paginas_principais_aplicado_05-10.md`).
6. Kenlo apaga caracteres especiais em alguns campos (ex.: "Küche" → "Kche").
7. Ficha com título vazio no painel = ficha cancelada/fora do ar; não escrever.

---

## 6. Próximos passos, em ordem

1. (Quando o Roberto mandar retomar) Reotimizar as ~322 restantes, começando por resolver as **22 preparadas offline** (seção 3).
2. Revisão de qualidade completa (regra #340) de todas as regravadas em 05/10 em diante.
3. Fila de títulos e meta (FILA-CORRECAO): **T1** palavra da URL no título (214 fichas, +2,56 no DataForSEO), **T6** títulos repetidos (34, ex.: TE0090/TE0132, CA0096/CA0299/CA0340), **T5** 1ª frase dentro da meta (66), **T8** frases longas (10).
4. PO0009: trocar "Vila Abernéssia" no título (proposta 9,3 pronta em `todas-urls\grafias\PO0009_proposta_05-10.json`; a gravação foi negada pelo classificador).
5. Textos próprios de 39 condomínios (campo `txDescricoes` no cadastro do condomínio; testar se grava antes).
6. Reconferir na sexta a indexação (tarefa agendada) e o teste ao vivo da CA0312.

---

## 7. O que depende do Roberto

1. **Enviar** o rascunho do Gmail para a Kenlo sobre o cache antigo (central exec #249) — é o que faz as correções chegarem ao Google.
2. **Liberar** o "Publicar" do Kenlo Sites no Claude Code, ou fazer à mão os 9 passos (tarefa #42).
3. **OK** para mexer no cartão do corretor (P2) e no teste da P3.
4. **Entrar no Geopix** (sessão expirou) para levantar áreas oficiais.
5. Responder: TE0179 (63.000 ou 50.000 m²?), SI0012 (área construída), vagas cobertas de CA0349/CA0530/CA0328, menções propositais de grafia (CA0328, TE0060, TE0062), se troca também "Vila Abernéssia" citada como vizinha (110 vezes), e as perguntas de `RESUMO-05-10.md` (seção 5) e `painel\RESUMO-PAINEL-05-10.md`.
6. Conflito #16 (números da CA0312) e as 17 fichas travadas (`D:\Claude roberto@imoveisem\HANDOFF-C-travadas.txt`).

---

## 8. Ao terminar a sessão nova
- `py -3 D:/Central/central.py corrigir <id do ponto de retomada atual> --texto "<estado completo>" --proveniencia SISTEMA_REGISTROU --fonte "<conversa> em DD/MM"`
- `py -3 D:/Central/central.py encerrar --resumo "..." --executado "..." --pendente "..." --proximos "..."`

---

## 9. ATUALIZAÇÃO FINAL (05/10 ~21h) — comece por aqui

### 9.1 Por que parou
O Roberto mandou continuar até 95% da cota semanal (decisão #66) e então pausar. Parei em **94%** (Fable já em 100%; renovam sexta 10/10 ~11h) para sobrar margem para esta passagem. **Não retome sem ordem do Roberto.**

### 9.2 Números finais
- Fichas gravadas hoje: **96** (65 reotimizadas + 31 novas/medidas). Notas de hoje: **9,4 a 9,7**.
- Site: **650 fichas com nota: 303 ≥ 9,7, 347 entre 9,0 e 9,6, 0 abaixo de 9** (menor 9,1, maior 9,9).
- As 22 fichas "preparadas offline" foram resolvidas: 2 gravadas (CA0365 e CA0505, 9,5→9,7) e 20 revertidas ao texto publicado (`preparado_descartado: true`). **Nenhuma pendente.**

### 9.3 Fila exata para retomar (arquivo único)
`D:\Servidor\_SEO\sites-no-topo\todas-urls\FILA-REOTIMIZAR-PARA-RETOMAR.json`
- `prioridade_1_nota_ate_9_4` → **106 fichas** (fazer primeiro; é onde há ganho).
- `prioridade_2_nota_9_5_9_6` → **175 fichas** (muitas pedem 850–1.165 palavras na Semrush, que não cabem no Kenlo; tentar 1 vez trocando o atributo da palavra principal; se o alvo continuar alto, anotar "alvo alto" e seguir — não insistir).
- `tentadas_e_revertidas_(alvo_alto)` → 20 fichas: **não refazer** sem estratégia nova.
- Sempre pular ficha com `reotimizado: true` no JSON.

### 9.4 PRIMEIRO PASSO OBRIGATÓRIO ao retomar (26 fichas)
A reotimização foi parada no meio. Estas fichas tiveram o JSON local mexido nas últimas horas e **não têm `reotimizado: true`**: o texto local pode ter edições não publicadas.
`AP0133 AP0144 AP0167 AP0196 CA0123 CA0395 CA0406 CA0449 CA0463 CA0518 CA0528 CH0009 CO0005 PO0011 PT0005 TE0002 TE0028 TE0127 TE0133 TE0146 TE0148 TE0161 TE0168 TE0170 TE0171 TE0182`
Para cada uma: ler no painel `#txTituloSite` e `#txDescricaoSite` (fetch de `/admin/modules/imoveis_beta/imovel-alterar.aspx?id=<id>` dentro da aba do painel) e comparar com `title`/`texto_simples` do JSON. Se diferir, **o painel é a verdade**: copie o do painel para o JSON (backup antes), refaça o `html` mantendo H1/imagem/2 links e rode `preparar.py`. Só depois reotimize. Confira também, por fetch, que área/quartos/suítes/banheiros/vagas não foram zerados (compare com a API de 29/09).

### 9.5 Lições novas de hoje (além da seção 5)
1. **Preparar texto sem medir na Semrush não funciona** (central #342): alvo e recomendadas mudam a cada documento novo. Sempre medir no navegador.
2. **Não editar o texto dentro do editor da Semrush com `deleteText`+`insertText`**: embaralha palavras ("oferecee", "hóspedespermanecem"). Use o quill só para disparar o recálculo (inserir e apagar 1 espaço). Para trocar texto: edite o arquivo local (`trocar_local.py`) e **cole o documento inteiro de novo**.
3. **Esperas longas dentro do JavaScript travam a aba oculta**: chamadas curtas + a espera da própria ferramenta (wait) entre elas.
4. **Proteção das características**: o campo `in_vagas` é calculado pela página (garagens + descobertas) e é desabilitado — ignore-o na comparação form x servidor.
5. **Ganho real está nas notas até 9,4**; acima de 9,5 o retorno é baixo por causa do limite de ~4.600 caracteres do Kenlo.
6. **Navegador**: no máximo 8 agentes com aba própria (central #188); com o modelo padrão rodei 4, com folga.
7. **Cota**: a rodada com 9 agentes Fable consumiu o Fable inteiro em ~1 h; agentes no navegador gastam muito. Dimensione pela cota.

### 9.6 Depois da reotimização (ordem)
1. **Revisão de qualidade obrigatória (regra #340)**, com esforço alto, de TODA ficha regravada em 05/10 (lista: JSON com `publicado_em` 2026-10-05): fatos x cadastro/API/pontos do bairro/guia, gramática e concordância, grafias da #62, zoneamento em terreno, nota registrada x documento Semrush (`doc_swa`), características intactas. Reprovou → corrigir.
2. Fila de títulos (FILA-CORRECAO-05-10.json): T1 (214), T6 títulos repetidos (34; inclui TE0090/TE0132, CA0096/CA0299/CA0340, TE0095/TE0104, TE0148/TE0206, TE0029/TE0175), T5 (66), T8 (10).
3. PO0009 ("Vila Abernéssia" no título; proposta 9,3 em `todas-urls\grafias\PO0009_proposta_05-10.json`).
4. Textos de 39 condomínios (campo `txDescricoes`; testar gravação antes).
5. Indexação: a tarefa agendada "indexacao-diaria-com" segue sozinha todo dia 08:30.

### 9.7 Registro
- Ponto de retomada da central atualizado (ver `py -3 D:/Central/central.py retomar site-com`).
- Decisões do dia: #64, #65, #66; regras/lições: #331, #338, #340, #342; conflitos novos: #18 (altitude), #19 (TE0179).
