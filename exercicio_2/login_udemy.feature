#language: pt

Funcionalidade: Login
    Como usuário do site Udemy
    Quero efetuar o login
    Para acessar as funcionalidades de usuário logado

    Contexto: Acessar área de login
        Dado que esteja na home da Udemy
        E acessa a opção de login

    Esquema do Cenário: Autenticação com falha
        Dado que preencha os dados com "<característica>"
        Quando escolher seguir
        Então deverá ser exibida a mensagem "<msg>"
        Exemplos:
            | característica                | msg                                                                                 |
            | Email não cadastrado          | Ocorreu um problema ao fazer login. Verifique seu e-mail e senha ou crie uma conta. |
            | Senha não cadastrada          | Ocorreu um problema ao fazer login. Verifique seu e-mail e senha ou crie uma conta. |
            | E-mail sem @                  | Inclua um "@" no endereço de e-mail.                                                |
            | E-mail sem nome do utilizador | Insira uma parte seguida por "@".                                                   |
            | E-mail sem domínio            | Insira um endereço de email válido.                                                 |
            | E-mail sem o nome do servidor | Insira uma parte depois de "@".                                                     |
            | Senha incompleta              | Aumente este texto para 6 caracteres ou mais.                                       |

    Cenário: Autenticação com sucesso
        Quando inserir credenciais válidas já cadastrados
        E escolher seguir
        Então deverá ser validado o usuário logado na home
