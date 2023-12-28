            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
            Para depois inserir no carrinho

            # Critérios:
            # 1. Seleção de cor, tamanho e quantidade devem ser obrigatórios
            # 2. Deve permitir apenas 10 produtos por venda
            # 3. Quando eu clicar no botão "Limpar" deve voltar ao estado original

            Contexto:
            Dado que eu escolhi um produto na EBAC-SHOP

            Esquema do Cenário: Seleção de cor e tamanho
            Quando eu selecionar a <cor>
            E eu selecionar o <tamanho>
            Então os botões selecionados devem ficar em cores diferentes
            E deverá aparecer ao lado direito a imagem do produto na cor selecionada

            | cor      | tamanho |
            | "Blue"   | "XS"    |
            | "Orange" | "XS"    |
            | "Red"    | "XS"    |
            | "Blue"   | "S"     |
            | "Orange" | "S"     |
            | "Red"    | "S"     |
            | "Blue"   | "M"     |
            | "Orange" | "M"     |
            | "Red"    | "M"     |
            | "Blue"   | "L"     |
            | "Orange" | "L"     |
            | "Red"    | "L"     |
            | "Blue"   | "XL"    |
            | "Orange" | "XL"    |
            | "Red"    | "XL"    |

            Cenário: Seleção de quantidade
            Quando eu acrescentar quantidade
            E valor for maior que "10"
            Então deverá exibir mensagem de alerta: "Limite máximo de 10 itens!"
            E inserir automaticamente o valor "10" na área de quantidade

            Cenário: Clicar no botão "Limpar"
            Quando eu clicar no botão "Limpar"
            Então os botões e a imagem do produto devem voltar ao seu estado original