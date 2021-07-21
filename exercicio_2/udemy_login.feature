#language: pt

Funcionalidade: Login

    Contexto: Acessar área de login
        Dado que esteja na home do Udemy
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
            | E-mail | Incompleto sem domínio)           | Insira um endereço de email válido.                                                 |
            | Senha  | Incompleta                        | Aumente este texto para 6 caracteres ou mais.                                       |

    Cenário: Autenticação com sucesso
        Quando inserir email e senha já cadastrados
        E escolher seguir
        Então deverá ser exibida a opção My learning
