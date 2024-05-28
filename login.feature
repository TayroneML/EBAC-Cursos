   
Funcionalidade: Login na plataforma

Cenário: Autenticação válida
    Dado que que o cliente acesse a página de login da plataforma EBAC-SHOP
    Quando o cliente digitar o usuário "jose.ernesto@ebac.com.br"
    E a senha "admin@123"
    Então direcionar para a tela de checkout

Esquema do Cenário: Esquema do Cenário name: Usuário ou senha inválidos
    Dado que que o cliente acesse a página de login da plataforma EBAC-SHOP
    Quando o cliente digitar o <usuario>
    E a <senha>
    Então deve exibir uma mensagem "Usuário ou senha inválidos"

Exemplos:
|usuario                      |senha          |
|"joao@ebac.com.br"           |"admin@123"    |
|"maria@ebac.com.br"          |"teste@123"    |
|"jjose.ernesto@ebac.com.br"  |"teste@123"    |
