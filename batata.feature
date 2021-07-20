#language: pt

Funcionalidade: Pesquisa

Cenário: Buscar por batata no google imagens
    Dado que esteja na home do Google
    Quando buscar por "batata"
    E entrar em Imagens
    E clicar na primeira imagem exibida
    Então deverá ser exibida a imagem ampliada