# language: pt

Funcionalidade: Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na pagina de cadastro do checkout
   
  Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
    Quando todos os campos obrigatórios (*) estão preenchidos com dados válidos
    E clico em "Finalziar compra"
    Então o cadastro deve ser concluído com sucesso
   Exemplos:
      Nome | Sobrenome| Pais           | Endereço               |Cidade     |CEP    |Telefone   | email                 |
      |Joao| Silva1   |Reino Unido(UK) |Compton Street soho 01  |Londres    |01234  |9123456789 |cliente01@gmail.com
      |Jose| Silva2   |Reino Unido(UK) |Compton Street soho 01  |Manchester |31235  |8123456789 |cliente02@gmail.com
      |Jaco| Silva3   |Reino Unido(UK) | Compton Street soho 01 |Bermingan  |21236  |7123456789 |cliente03@gmail.com

  Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
    Quando o e-mail informado é invalido <email>
    E clico em "Finalziar compra"
    Então o cadastro não deve ser concluído e exibe mensagem <mensagem> de alerta

    Exemplos:
      | email               | Mensagem          |
      | "clientegmail.com"  | "email inválido"  |
      | "cliente@"          | "email inválido"  |
      | "cliente@gmail"     | "email inválido"  |

  Esquema do Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
    Quando os campos obrigatórios não estão preenchidos com dados 
    E clico em "Finalziar compra" 
    Então deve ser exibida uma  mensagem <mensagem> de alerta

    Exemplos:
      Campo         | Mensagem                                        |
      Email vazio   | "Favor preencher o(s) intens marcados com (*)"  |
      Cidade Vazio  | "Favor preencher o(s) intens marcados com (*)"  |
      Cep Vazio     | "Favor preencher o(s) intens marcados com (*)"  |
  

    