            #language: pt

            Funcionalidade: Tela de Cadastro / Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            # Critérios de aceitação:
            # 1. Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            # 2. Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            # 3. Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.

            Contexto:
            Dado que eu já finalizei a escolha dos produtos
            E estou na tela de cadastro para finalização da compra

            Cenário: Cadastro de e-mail com formato inválido
            Quando tentar cadastrar <e-mail>
            Então deve aparecer mensagem de alerta: "Somente e-mails válidos"
            E apagar somente campo de e-mail

            | email          |
            | "joao.com.br"  |
            | "joao"         |
            | "joao@ebac"    |
            | "maria.com.br" |
            | "maria"        |
            | "maria@ebac"   |

            Cenário: Cadastro com espaços obrigatórios em branco
            Quando eu tentar finalizar cadastro deixando espaços que tem um "*" em branco
            Então exibir mensagem de alerta: "Os espaços com '*' são obrigatórios. Por favor, certifique-se de que todos os campos foram preenchidos."
