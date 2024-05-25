Feature: Tela de Cadastro - Checkout

  Scenario: Cadastro com todos os dados obrigatórios preenchidos
    Given que o cliente está na tela de cadastro
    When o cliente preenche todos os campos obrigatórios
    And clica no botão "Cadastrar"
    Then o cliente deve ser cadastrado com sucesso
    And deve ser redirecionado para a página de confirmação de pedido

Scenario Outline: Cadastro com e-mail inválido
    Given que o cliente está na tela de cadastro
    When o cliente insere o e-mail <email>
    And preenche todos os outros campos obrigatórios
    And clica no botão "Cadastrar"
    Then o sistema deve exibir uma mensagem de erro "Formato de e-mail inválido"

  Examples:
    | email                  |
    | usuariosemarroba.com   |
    | usuario@semPonto       |
    | usuario@.com           |
    | usuario@site,com       |

Scenario: Cadastro com campos obrigatórios vazios
    Given que o cliente está na tela de cadastro
    When o cliente deixa os campos obrigatórios vazios
    And clica no botão "Finalizar Compra"
    Then o sistema deve exibir uma mensagem de alerta "Preencha todos os campos obrigatórios"