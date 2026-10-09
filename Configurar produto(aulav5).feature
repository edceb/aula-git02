# language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero escolher o tamanho, a cor e a quantidade do produto
  Para adicionar o produto ao carrinho

  Contexto:
    Dado que estou na página do produto

  Cenário: Adicionar produto com configuração válida ao carrinho
    Quando seleciono o tamanho "S"
    E seleciono a cor "blue"
    E informo a quantidade "2"
    Então o botão "Adicionar ao carrinho" deve estar habilitado
    Quando clico em "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho
    E deve apresentar o tamanho "S", a cor "blue" e a quantidade "2"

  Cenário: Limpar as configurações selecionadas
    Dado que selecionei o tamanho "S"
    E selecionei a cor "blue"
    E informei a quantidade "2"
    Quando clico no botão "Limpar"
    Então as configurações devem retornar ao estado inicial

  Cenário: Adicionar a quantidade máxima permitida
    Dado que selecionei o tamanho "S"
    E selecionei a cor "blue"
    Quando informo a quantidade "10"
    E clico em "Adicionar ao carrinho"
    Então o produto deve ser adicionado ao carrinho com a quantidade "10"

  Esquema do Cenário: Impedir compra acima do limite máximo
    Dado que selecionei o tamanho "S"
    E selecionei a cor "blue"
    Quando informo a quantidade <quantidade>
    E tento adicionar o produto ao carrinho
    Então o produto não deve ser adicionado ao carrinho
    E deve ser exibida uma mensagem informando o limite máximo de 10 unidades

    Exemplos:
      | quantidade |
      | 11         |
      | 20         |

  Cenário: Impedir compra sem selecionar o tamanho
    Dado que selecionei a cor "blue"
    E informei a quantidade "2"
    Quando tento adicionar o produto ao carrinho sem selecionar o tamanho
    Então o produto não deve ser adicionado ao carrinho

  Cenário: Impedir compra sem informar a quantidade
    Dado que selecionei o tamanho "S"
    E selecionei a cor "blue"
    Quando deixo o campo de quantidade vazio
    E tento adicionar o produto ao carrinho
    Então o produto não deve ser adicionado ao carrinho

  Cenário: Impedir compra sem selecionar a cor
    Dado que selecionei o tamanho "S"
    E informei a quantidade "2"
    Quando tento adicionar o produto ao carrinho sem selecionar a cor
    Então o produto não deve ser adicionado ao carrinho