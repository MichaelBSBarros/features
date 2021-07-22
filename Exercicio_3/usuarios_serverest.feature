#language: pt

Funcionalidade: Usuarios
    Como usuário padrão 
    Quero realizar requisições na rota /usuarios 
    Para realizar o CRUD de informações

    Esquema do Cenário: GET - usuarios
        Quando buscar por todos usuarios
        Então deverá ser retornado o schema 'get_usuarios' com status 200
        E deverá ser retornado no corpo da resposta a "<prop>" com mensagem "<valor>"
        Exemplos:
            | prop  | valor         |
            | email | fulano@qa.com |


        