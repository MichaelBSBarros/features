#language: pt

Funcionalidade: Login
    Como usuário do site Udemy
    Quero efetuar o login
    Para acessar as funcionalidades de usuário logado

    Contexto: Acessar área de login
        Dado que esteja na home da Udemy
        E acessa a opção de login

    Esquema do Cenário: Autenticação com falha
        Quando inserir "<campo>" "<característica>"
        E escolher seguir
        Então deverá ser exibida a mensagem "<msg>"
        Exemplos:
            | campo  | característica                    | msg                                                                                 |
            | E-mail | Não cadastrado                    | Ocorreu um problema ao fazer login. Verifique seu e-mail e senha ou crie uma conta. |
            | Senha  | Não cadastrada                    | Ocorreu um problema ao fazer login. Verifique seu e-mail e senha ou crie uma conta. |
            | E-mail | Incompleto sem @                  | Inclua um "@" no endereço de e-mail.                                                |
            | E-mail | Incompleto sem nome do utilizador | Insira uma parte seguida por "@".                                                   |
            | E-mail | Incompleto sem domínio            | Insira um endereço de email válido.                                                 |
            | E-mail | Incompleto sem o nome do servidor | Insira uma parte depois de "@".                                                     |
            | Senha  | Incompleta                        | Aumente este texto para 6 caracteres ou mais.                                       |

    Cenário: Autenticação com sucesso
        Quando inserir credenciais válidas já cadastrados
        E escolher seguir
        Então deverá ser validado o usuário logado na home
