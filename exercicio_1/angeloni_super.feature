#language: pt

Funcionalidade: Produto

Cenário: Buscar produto por departamento
    Dado que esteja na home da Angeloni Super
    Quando acessar o primeiro departamento
    E acessar o primeiro produto exibido
    Então deverá ser exibido o produto selecionado
