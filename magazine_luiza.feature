#language: pt

Funcionalidade: Sacola de itens

Esquema do Cenário: Adicionar produto à sacola
    Dado que esteja na home da Magazine Luiza
    Quando buscar por "<produto>"
    E acessar o primeiro produto exibido
    E adicionar à sacola
    Então deverá ser exibido "<produto>" na sacola
    Exemplos:
        | Produto    |
        | computador |