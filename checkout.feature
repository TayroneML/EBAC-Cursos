
Funcionalidade: Tela de Cadastro - Checkout

  Cenário: Cadastro com todos os dados obrigatórios preenchidos
    Dado que que o cliente está na tela de cadastro
    Quando o cliente preenche todos os campos obrigatórios para concluir
    Então o cliente deve ser cadastrado com sucesso
    E deve ser redirecionado para a página de confirmação de pedido

Esquema do Cenário: Cadastro com e-mail inválido
    Dado que que o cliente está na tela de cadastro
    Quando o cliente insere o e-mail <email>
    E preenche todos os outros campos obrigatórios para cadastrar
    Então o sistema deve exibir uma mensagem de erro "Formato de e-mail inválido"

  Exemplos:
    | email                  |
    | usuariosemarroba.com   |
    | usuario@semPonto       |
    | usuario@.com           |
    | usuario@site,com       |

Cenário: Cadastro com campos obrigatórios vazios
    Dado que que o cliente está na tela de cadastro
    Quando o cliente deixa os campos obrigatórios vazios e tenta concluir
    Então o sistema deve exibir uma mensagem de alerta "Preencha todos os campos obrigatórios"
