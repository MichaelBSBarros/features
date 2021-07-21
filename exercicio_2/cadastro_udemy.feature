#language: pt

Funcionalidade: Cadastro
    Como usuário do site Udemy
    Quero efetuar o cadastro
    Para acessar as funcionalidades de usuário logado

    Contexto: Acessar área de cadastro
        Dado que esteja na home da Udemy
        E acessa a opção de cadastro

    Esquema do Cenário: Tentativa de cadastro com falha
        Dado que preencha os dados com "<situação>"
        #Quando inserir "<campo>" "<característica>"
        Quando escolher seguir
        Então deverá ser exibida a mensagem "<msg>"
        Exemplos:
            | situação                        | msg                                           |
            | nome com menos de 2 caracteres  | Aumente esse texto para 2 caracteres ou mais. |
            | E-mail sem @                    | Inclua um "@" no endereço de e-mail.          |
            | E-mail sem nome do utilizador   | Insira uma parte seguida por "@".             |
            | E-mail sem domínio              | Insira um endereço de email válido.           |
            | E-mail sem o nome do servidor   | Insira uma parte depois de "@".               |
            | Senha Com menos de 6 caracteres | Aumente este texto para 6 caracteres ou mais. |

    Cenário: Cadastro com sucesso
        Quando inserir dados válidos para o cadastro
        E escolher seguir
        Então deverá ser validado o usuário logado na home
        #validar a opção de Meu aprendizado