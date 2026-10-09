# language: pt

Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de cadastro do checkout
    E os campos obrigatórios estão identificados com asteriscos

  Cenário: Concluir cadastro com e-mail válido
    Dado que todos os campos obrigatórios estão preenchidos com dados válidos
    E o e-mail informado é "cliente@gmail.com"
    Quando solicito a conclusão do cadastro
    Então o cadastro deve ser concluído com sucesso

  Esquema do Cenário: Não concluir cadastro com e-mail inválido
    Dado que os demais campos obrigatórios estão preenchidos com dados válidos
    E o e-mail informado é <email>
    Quando solicito a conclusão do cadastro
    Então o cadastro não deve ser concluído
    E deve ser exibida uma mensagem informando que o e-mail é inválido

    Exemplos:
      | email               |
      | "clientegmail.com"  |
      | "cliente@"          |
      | "cliente@gmail"     |

  Esquema do Cenário: Não concluir cadastro com campo obrigatório vazio
    Dado que os demais campos obrigatórios estão preenchidos com dados válidos
    E o campo obrigatório <campo> está vazio
    Quando solicito a conclusão do cadastro
    Então o cadastro não deve ser concluído
    E deve ser exibida uma mensagem indicando que o campo <campo> é obrigatório

    Exemplos:
      | campo       |
      | "Nome"      |
      | "Sobrenome" |
      | "E-mail"    |