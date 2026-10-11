# Regras de palavra-chave para fichas do .net (GoMóvel)

Base: MAPA-PALAVRAS-COM-NET.csv (Ahrefs BR, 2026-10-10). Coluna `dono` decide. Nunca use no .net uma variante com dono=com.

## 1. Fato importante dos dados
- Demanda medida existe quase só no nível CIDADE (casa/terreno/apartamento/aluguel + "campos do jordão").
- Combinações tipo × bairro ("casa à venda Vila Capivari", "apartamento Capivari", "casa Descansópolis", "terreno Descansópolis") deram volume 0 no Ahrefs. Os bairros têm volume só como busca turística/informativa ("vila capivari campos do jordão" 900, "vila inglesa campos do jordão" 400, "abernéssia" 300, "alto da boa vista" 150, "alto do capivari" 100).
- Logo: a ficha não "ganha volume" pelo bairro; ganha por cauda longa sem disputa. A palavra principal da ficha deve ser tipo+bairro na forma do .net (abaixo), e as páginas de listagem/blog do .net capturam o volume da cidade.

## 2. Como escolher a palavra principal de uma ficha .net
1. Identifique tipo, finalidade, bairro e 1 atributo forte (lareira, vista, condomínio fechado, mobiliado, terreno grande, perto do centrinho).
2. Padrão .net = **plural/descritivo + atributo + "no/na <bairro>"**; padrão .com = **singular + "à venda" + bairro + cidade**.
   - .com: "Casa à venda na Vila Capivari, Campos do Jordão"
   - .net: "Casa com lareira e vista na Vila Capivari" / "Casa em condomínio no Alto do Capivari"
3. Se o mesmo imóvel estiver nos dois sites: o .net NUNCA repete o atributo usado no title do .com. Escolha outro ângulo (vista x lareira x condomínio x tamanho do terreno x distância do centrinho).
4. Palavras genéricas da cidade (ver mapa) só vão nas páginas de listagem, nunca no title de uma ficha.
5. Variantes "livres" (volume 0) podem ser usadas pelos dois, mas não com o mesmo texto.

## 3. Padrões de título/H1 (.net)
- Title: `<Tipo> <atributo> no/na <Bairro> | <n> dorms | Campos do Jordão` (≤60 car.)
- H1: frase diferente do title, ex.: `Casa de 3 dormitórios com lareira no Alto do Capivari`.
- Evitar no .net: "à venda em Campos do Jordão" no início do title, "imóveis à venda", "aluguel Campos do Jordão" (donos .com).
- Usar no .net: "casas em/de Campos do Jordão", "terreno(s) em Campos do Jordão", "chácara", "pousada à venda", "aluguel mensal/para morar por mês", "casas baratas".
- Listagens .net: /casas = "Casas em Campos do Jordão"; /terrenos = "Terreno em Campos do Jordão"; /pousadas = "Pousada à venda em Campos do Jordão"; /imoveis/locacao = "Casas para alugar por mês em Campos do Jordão".

## 4. Texto
- 100% diferente do .com para o mesmo imóvel: nada de copiar descrição do Kenlo, nem parágrafos reescritos por sinônimo. Ordem, ângulo e abertura diferentes.
- Abertura do .net: fale do bairro/vida no local (o .net tem os guias de bairro no blog); .com abre pelo imóvel/ficha técnica.
- Link interno da ficha .net para o guia do bairro no blog do .net.
- Meta description própria, sem repetir a do .com.

## 5. Checklist antes de publicar
- [ ] Palavra principal consta no mapa com dono=net ou é "livre"?
- [ ] Title/H1 diferentes entre si e diferentes do .com?
- [ ] Atributo diferente do usado no .com para o mesmo imóvel?
- [ ] Nenhuma frase igual ao .com (checar trecho de 10 palavras)?
