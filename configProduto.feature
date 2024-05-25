Feature: Configurar produto

Scenario: Seleções de cor, tamanho e quantidade obrigatórios
    Given que o cliente está na página de configuração do produto
    When o cliente tenta adicionar o produto ao carrinho sem selecionar cor, tamanho e quantidade
    Then o sistema deve exibir mensagens de erro indicando que cor, tamanho e quantidade são obrigatórios

Scenario: Limite de 10 produtos por venda
    Given que o cliente está na página de configuração do produto
    When o cliente seleciona uma cor e um tamanho
    And insere a quantidade "11"
    Then o sistema deve exibir uma mensagem de erro "A quantidade máxima permitida é 10"
    And o cliente não deve conseguir adicionar mais de 10 produtos ao carrinho

Scenario: Limpar seleção e voltar ao estado original
    Given que o cliente está na página de configuração do produto
    And o cliente selecionou uma cor, um tamanho e uma quantidade
    When o cliente clica no botão "limpar"
    Then as seleções de cor, tamanho e quantidade devem ser resetadas para o estado original    
