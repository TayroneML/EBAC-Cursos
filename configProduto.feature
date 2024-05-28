
Funcionalidade: Configurar produto

Cenário: Seleções de cor, tamanho e quantidade obrigatórios
    Dado que que o cliente está na página de configuração do produto
    Quando o cliente tenta adicionar o produto ao carrinho sem selecionar cor, tamanho e quantidade
    Então o sistema deve exibir mensagens de erro indicando que cor, tamanho e quantidade são obrigatórios

Cenário: Limite de 10 produtos por venda
    Dado que que o cliente está na página de configuração do produto
    Quando o cliente seleciona uma cor e um tamanho
    E insere a quantidade "11"
    Então o sistema deve exibir uma mensagem de erro "A quantidade máxima permitida é 10"
    E o cliente não deve conseguir concluir

Cenário: Limpar seleção e voltar ao estado original
    Dado que que o cliente está na página de configuração do produto
    E o cliente selecionou uma cor, um tamanho e uma quantidade
    Quando o cliente clica no botão "limpar"
    Então as seleções de cor, tamanho e quantidade devem ser resetadas para o estado original    
