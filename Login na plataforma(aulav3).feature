            # language: pt

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticacao) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que o usuario esteja na tela de login

            Esquema do Cenario: Login na plataforma valido 
            Quando  inserir os dados <usuario> e <senha>
            E os dados estao corretos
            Entao deve ser direcionado para a tela de checkout 

            Exemplos:
            | Usuario                | senha       | mensagem                      |
            | user 01                | 123abc      | Direcionado para o checkout   |
            | user 02                | 123abc      | Direcionado para o checkout   |


            Esquema do Cenario: Login na plataforma invalido 
            Quando inserir os dados <usuario> e <senha>
            E os dados  estao incorretos
            Entao deve aparecer uma <mensagem>

            Exemplos:
            | Usuario                | senha       | mensagem                      |
            | user 01                | 3123        | Usuario ou senha invalidos    |
            | user 02                | 3123        | Usuario ou senha invalidos    |


