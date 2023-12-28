            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            #Critérios de aceitação:
            #1. Ao inserir dados válidos deve ser direcionado para a tela de checkout
            #2. Ao inserir um dos campos inválidos deve exibir a mensagem de alerta: "Usuário ou senha inválidos"

            Contexto:
            Dado que eu abri a página de acesso da EBAC-SHOP

            Esquema do Cenário: Login com dados válidos
            Quando eu inserir <login>
            E eu inserir <senha>
            Então deverá aparecer a <mensagem>
            E direcionar para tela de checkout

            | login               | senha      | mensagem     |
            | "joao123@ebac.com"  | "joao123"  | "Olá, João"  |
            | "maria123@ebac.com" | "maria123" | "Olá, Maria" |
            | "jose123@ebac.com"  | "jose123"  | "Olá, José"  |
            | "joana123@ebac.com" | "joana123" | "Olá, Joana" |
            | "bia123@ebac.com"   | "bia123"   | "Olá, Bia"   |

            Esquema do Cenário: Login com dados inválidos
            Quando eu inserir <login>
            E eu inserir <senha>
            Então deverá aparece a mensagem: "Login ou senha inválidos"

            | login               | senha      |
            | "joao123@ebac.com"  | "joao"     |
            | "joao@ebac.com"     | "joao123"  |
            | "joao@ebac.com"     | "joao"     |
            | "maria123@ebac.com" | "maria"    |
            | "maria@ebac.com"    | "maria123" |
            | "maria@ebac.com"    | "maria"    |
            | "jose123@ebac.com"  | "jose"     |
            | "jose@ebac.com"     | "jose123"  |
            | "jose@ebac.com"     | "jose"     |
            | "joana123@ebac.com" | "joana"    |
            | "joana@ebac.com"    | "joana123" |
            | "joana@ebac.com"    | "joana"    |
            | "bia123@ebac.com"   | "bia"      |
            | "bia@ebac.com"      | "bia123"   |
            | "bia@ebac.com"      | "bia"      |
