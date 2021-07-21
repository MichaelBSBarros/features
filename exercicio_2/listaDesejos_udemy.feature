#language: pt

Funcionalidade: Lista de Desejos
    Como usuário do site Udemy
    Quero poder guardar cursos de interesse no meu perfil
    Para realizar a compra futuramente

    Contexto:
        Dado que esteja na home do Udemy com usuario logado
        
    Cenário: adicionar à lista de desejos
        Quando selecionar um curso disponível para compra
        E selecionar a opção de lista de desejos do curso
        E acessar a página de lista de desejos
        Então deverá ser exibido o curso na lista de desejo

    Cenário: remover da lista de desejos
        Quando acessar a página de lista de desejos
        E for exibido o curso disponível para compra
        E for marcada a opção de remover da lista de desejos
        Então o curso não deverá ser exibido na lista de desejo