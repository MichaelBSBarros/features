#language: pt

Funcionalidade: Usuarios
    Como usuário padrão 
    Quero realizar requisições na rota /usuarios 
    Para realizar o CRUD de informações

    Contexto:
        Dado a rota "/usuarios"

    Esquema do Cenário: GET - usuarios
        Quando buscar por todos usuarios
        Então deverá ser retornado o schema 'get_usuarios' com status 200
        E deverá ser retornado no corpo da resposta a "<prop>" com mensagem "<valor>"
        Exemplos:
            | prop  | valor         |
            | email | fulano@qa.com |

    Esquema do Cenário: GET - usuario por ID
        Quando buscar usuarios com ID "<id>"
        Então deverá ser retornado o schema 'get_usuarios_por_id' com status <status>
        Exemplos:
            | ID               | status |
            | 0uxuPY0cbmQhpEz1 | 200    |
            | invalid          | 400    |

    Esquema do Cenário: POST - usuario
        Dado um body com nome "<nome>", email "<email>", senha "<senha>" e administrador "<adm>"
        Quando realizar a requisicao "POST" 
        Então deverá ser retornado o schema "post_usuarios" com status <status>
            | nome  | email             | senha | adm  | status |
            | teste | massateste@qa.com | teste | true | 201    |
            | teste | fulano@qa.com     | teste | true | 400    |

        