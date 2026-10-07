                  #language: pt

                  Funcionalidade:  Cadastro no checkout
                  Como cliente da EBAC-SHOP
                  Quero fazer concluir meu cadastro
                  Para finalizar minha compra

                  Contexto:
                 estou na pagina de cadastro do checkout e os campos obrigatorios estao identificados com asteriscos
                 
                  Esquema do Cenario: Concluir cadastro com dados validos
                  Dado que  os campos obrigatorios (*) estao preenchidos com dados validos
                  E o e-mail informado  <email>
                  Quando solicito a conclusao do cadastro
                  Entao o cadastro deve ser concluido e aparecer <mensagem>

                  Exemplos:
                  | Itens obrigatorios    | email                    | mensagem                                                |
                  | "preenchidos"         | "valido1@gmail.com"      | "Cadastro concluido com sucesso"                        |
                  | "preenchidos"         | "valido2@gmail.com"      | "Cadastro concluido com sucesso"                        |


                  Esquema do Cenario:  cadastro com email invalido
                  Dado que  os campos obrigatorios (*) estao preenchidos
                  E o e-mail informado <email>
                  Quando solicito a conclusao do cadastro
                  Entao o cadastro nao deve ser concluido e aparecer <mensagem>

                  Exemplos:
                  | Itens obrigatorios    | email                      | mensagem                                |
                  | "preenchidos"         | "invalido1@gmail"          | "email invalido"                        |
                  | "preenchidos"         | "invalido2gmail.co"       | "email invalido"                        |


                  Esquema do Cenario:  cadastro com itens obrigatorios vazios
                  Dado que os campos obrigatorios (*) nao estao preenchidos com dados
                  E o e-mail informado <email>
                  Quando solicito a conclusao do cadastro
                  Entao o cadastro nao deve ser concluido e aparecer <mensagem>

                  Exemplos:
                  | Itens obrigatorios    | email                      | mensagem                                |
                  | "nao preenchidos"      | "valido1@gmail.com"     | "favor preencher os itens com(*)"       |                 



