#language: pt

Funcionalidade: Produto

Cenário: Buscar produto por departamento
    Dado que esteja na home da Angeloni Super
    Quando clicar no primeiro departamento
    E clicar no primeiro produto exibido
    Então deverá ser exibido o produto selecionado
