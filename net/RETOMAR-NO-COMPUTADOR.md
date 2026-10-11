# .net: texto para colar no Claude do computador

Retome o trabalho do .net (imoveisemcamposdojordao.net) a partir da branch `claude/claudeseo-net-zv6qse`, no repositório maurerroberto/friendly-waddle. Puxe a branch e leia antes de agir:

1. `AUDITORIA-NET-2026-10-11.md`: nota de hoje, problemas e ordem de ataque.
2. `net/medicao/REGRAS-PALAVRAS-NET.md`, `CANIBALIZACAO.md` e `MAPA-PALAVRAS-COM-NET.csv`: o .net nunca usa como palavra principal uma palavra cujo dono é o .com.
3. `net/medicao/FILA-FICHAS-NET.json`: as fichas em ordem de prioridade (pelas impressões no Search Console).
4. `net/medicao/ALINHAMENTO-MAPA.md`: as trocas de palavra já feitas.

O que fazer, em ordem:
1. **Medir e gravar os textos prontos.** Estão em `net/paginas/` (home, casas, terrenos, aluguel, pousadas e llms.txt) e `net/fichas/` (54 fichas). Para cada um:
   - medir no Semrush SWA, ajustando até a nota **9,8**, como no .com (receita e travas no HANDOFF-05-10);
   - gravar no painel do GoMóvel/Go Imobil e conferir relendo a página.
   Antes de publicar, confira os atributos novos marcados em ALINHAMENTO-MAPA (por exemplo, "loja" na 2185 e "última casa da rua" na 2621).
2. **Fichas da fila sem texto:** escreva seguindo a FILA, com as REGRAS-PALAVRAS-NET. O texto do .net tem de ser 100% diferente do texto do .com para o mesmo imóvel.
3. **No .com (Kenlo):** aplique as trocas de título de CANIBALIZACAO.md que cabem ao .com.
4. **Pacote técnico:** entregue `net/tecnico/PACOTE-JEFFERSON.md`, com o robots.txt e o schema, ao Jefferson. Depois rode varreduras novas na Ahrefs (projeto 10408013) e na Semrush (campanha 31393522) para conferir.

Pendências de cadastro que o Roberto precisa responder estão nas seções "Pendências" de cada ficha. Os números contraditórios não foram usados nos textos.
