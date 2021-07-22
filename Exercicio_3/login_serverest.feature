#language: pt

Funcionalidade: Login
    Como usuário padrão 
    Quero realizar requisições na rota /login 
    Para realizar transferência de informações

    Esquema do Cenário: POST - Login
        Quando postar dados de login de usuario "<login>" com senha "<passw>"
        Então deverá ser retornado o schema 'post_login' com status <status>
        E deverá ser retornado no corpo da resposta a "<prop>" com mensagem "<mensagem>"
        Exemplos:
            | login         | passw | status | prop     | mensagem                          |
            | fulano@qa.com |       | 400    | password | password não pode ficar em branco |
            |               | teste | 400    | email    | email não pode ficar em branco    |
            | aaaaaa.com    | teste | 400    | email    | email deve ser um email válido    |
            | fulano@qa.com | a     | 401    | message  | Email e/ou senha inválidos        |
            | aaaa@aa.com   | teste | 401    | message  | Email e/ou senha inválidos        |
            | fulano@qa.com | teste | 200    | message  | Login realizado com sucesso       |
