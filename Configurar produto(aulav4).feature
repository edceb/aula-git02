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
            | tamanho | quantidade | cor    | botao                  |
            | S       | 1          | blue   | Limpar fica disponivel |
            | G       | 8          | orange | Limpar fica disponivel |

            Esquema do Cenario: configurar produto valido limite de compra
            Quando seleciono o <tamanho> e <quantidade> e <cor>
            E insiro no carrinho
            Entao  botao chechout

            Exemplos:
            | tamanho | quantidade | cor    | botao                  |
            | S       | 1          | blue   | chechout disponivel |
            | G       | 8          | orange | chechout disponivel |

            Esquema do Cenario: Configurar limite de compra
            Quando seleciono <tamanho> e <quantidade> e <cor>
            E insiro no carrinho
            Entao mensagem <mensagem>

            Exemplos:
            | tamanho         | quantidade | cor             | mensagem           |
            | Nao selecionado | 0          | blue            | Adicione o produto |
            | G               | 11         | orange          | Limite maximo 10   |
            | M               | 20         | Nao selecionado | Limite maximo 10   |


            Esquema do Cenario: Configurar tamanho invalido
            Quando não seleciono <tamanho> e seleciono <quantidade> e seleciono <cor>
            E insiro no carrinho
            Entao botao limpar nao aparece

            Exemplos:
            | tamanho         | quantidade | cor    | botao                        |
            | Nao selecionado | 1          | blue   | Limpar nao fica indisponivel |
            | Nao selecionado | 8          | orange | Limpar nao fica indisponivel |
            | Nao selecionado | 7          | blue   | Limpar nao fica indisponivel |

            Esquema do Cenario: Configurar quantidade invalido
            Quando  seleciono <tamanho> e não seleciono <quantidade> e seleciono <cor>
            E insiro no carrinho
            Entao botao limpar nao aparece

            Exemplos:
            | tamanho | quantidade      | cor             | botao                        |
            | S       | Nao selecionado | blue            | Limpar nao fica indisponivel |
            | S       | Nao selecionad  | orange          | Limpar nao fica indisponivel |
            | M       | Nao selecionad  | Nao selecionado | Limpar nao fica indisponivel |


            Esquema do Cenario: Configurar cor invalido
            Quando  seleciono <tamanho> e seleciono <quantidade> e não seleciono <cor>
            E insiro no carrinho
            Entao botao limpar nao aparece

            Exemplos:
            | tamanho | quantidade | cor             | botao                        |
            | S       | 1          | Nao selecionado | Limpar nao fica indisponivel |
            | S       | 2          | Nao selecionado | Limpar nao fica indisponivel |
            | M       | 2          | Nao selecionado | Limpar nao fica indisponivel |