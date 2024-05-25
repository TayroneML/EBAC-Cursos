
Feature: Login na plataforma

Scenario: Autenticação válida
    Given que o cliente acesse a página de login da plataforma EBAC-SHOP
    When o cliente digitar o usuário "jose.ernesto@ebac.com.br"
    And a senha "admin@123"
    Then direcionar para a tela de checkout

Scenario Outline: Scenario Outline name: Usuário ou senha inválidos
    Given que o cliente acesse a página de login da plataforma EBAC-SHOP
    When o cliente digitar o <usuario>
    E a <senha>
    Then deve exibir uma mensagem "Usuário ou senha inválidos"

Examples:
|usuario                      |senha          |
|"joao@ebac.com.br"           |"admin@123"    |
|"maria@ebac.com.br"          |"teste@123"    |
|"jjose.ernesto@ebac.com.br"  |"teste@123"    |
