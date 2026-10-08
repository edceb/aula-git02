            #language: pt

            Funcionalidade:  Cadastro no checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            DADO estou na pagina de cadastro do checkout e os campos obrigatorios estao identificados com asteriscos

            Esquema do Cenario: Concluir cadastro com dados validos
            Quando preencher todos os campos obirgatorios (*) com dados válidos, informar o email  <email> e clicar em "concluir cadastro"
            Entao o cadastro deve ser concluido e aparecer <mensagem>

            Exemplos:
            | Itens obrigatorios | email               | mensagem                         |
            | "preenchidos"      | "valido1@gmail.com" | "Cadastro concluido com sucesso" |
            | "preenchidos"      | "valido2@gmail.com" | "Cadastro concluido com sucesso" |


            Esquema do Cenario:  cadastro com email invalido
            Quando preencher todos os campos obrigatorios (*) com dados válidos, e o email invalido <email> e clicar em "concluir cadastro"
            Entao o cadastro nao deve ser concluido e aparecer <mensagem>

            Exemplos:
            | Itens obrigatorios | email               | mensagem         |
            | "preenchidos"      | "invalido1@gmail"   | "email invalido" |
            | "preenchidos"      | "invalido2gmail.co" | "email invalido" |


            Esquema do Cenario:  cadastro com itens obrigatorios vazios
            Quando nao preencher todos os campos obrigatorios (*) com dados válidos, e o email  <email> e clicar em "concluir cadastro"            
            Entao o cadastro nao deve ser concluido e aparecer <mensagem>

            Exemplos:
            | Itens obrigatorios | email               | mensagem                          |
            | "nao preenchidos"  | "valido1@gmail.com" | "favor preencher os itens com(*)" |