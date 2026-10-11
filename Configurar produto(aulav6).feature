# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero escolher o tamanho, a cor e a quantidade do produto
  Para adicionar o produto ao carrinho

  Contexto:
    Dado que estou na página de seleção produto

  Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
  Quando seleciono o tamanho <tamanho>, a cor <cor> e a quantidade <quantidade>
  E clico em "Comprar"
  Então o produto deve ser adicionado ao carrinho com as configurações selecionadas
  Exemplos:
      | tamanho      | cor    | quantidade |
      | S            | Blue   | 01         |
      | XS           | Orange | 02         |
      | XL           | red    | 03         |


  Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
  Quando seleciono não o tamanho <tamanho>, a cor <cor> e a quantidade <quantidade>
  E clico em "Comprar"
  Então uma mensagem <mensagem> de alerta deve aparecer
  Exemplos:
      | tamanho      | cor    | quantidade | Mensagem                           |
      |              | Blue   | 01         |"Favor Selecionar o "tamanho"       |
      |     S        |        | 02         |"Favor Selecionar a "cor"           |
      | XL           | red    |            |"Favor Selecionar a "quantidadeor"  |


  Cenário:Deve permitir apenas 10 produtos por venda
  Quando seleciono o quantidade <quantidade> 
  E clico em "Comprar"
  Então uma mensagem <mensagem> deve aparecer
  Exemplos:
      | quantidade   | mensagem                |
      | 11           | Compra máxima 10 itens  |
      | 12           | Compra máxima 10 itens  |
      | 13           | Compra máxima 10 itens  |


  Cenário:Quando eu clicar no botão “limpar” deve voltar ao estado original
  Quando seleciono o tamanho <tamanho>, a cor <cor> e a quantidade <quantidade> válidos 
  E clico em "Comprar"
  Então o botão  limpar aparece voltando para o estádo original
 
   
