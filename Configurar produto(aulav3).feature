            # language: pt

            Funcionalidade: configurar produto  
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho


            Contexto:
            Dado que o cliente esteja na pagina do produto
            
            Esquema do Cenario: configurar produto valido
            Quando seleciono o <tamanho> e <quantidade> e <cor>
            E insiro no carrinho
            Entao  botao limpar aparece

            Exemplos:
            | tamanho               | quantidade  | cor     | botao                  | 
            | S                     | 1           | blue    | Limpar fica disponivel | 
            | G                     | 8           | orange  | Limpar fica disponivel | 

            Esquema do Cenario: Configurar quantidade, tamanho ou cor produto invalido
            Quando seleciono  <tamanho> e <quantidade> e <cor>
            E insiro no carrinho
            Entao botao limpar nao aparece

            Exemplos:
            | tamanho               | quantidade  | cor             | botao                    |                  
            | Nao selecionado       | 1           | blue            | Limpar fica indisponivel | 
            | G                     | 11          | orange          | Limpar fica indisponivel | 
            | M                     | 7           | Nao selecionado | Limpar fica indisponivel | 