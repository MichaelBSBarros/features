#language: pt

Funcionalidade: Busca

    Contexto:
        Dado que esteja na home do Udemy

    Esquema do Cenário: Busca por curso sem sucesso
        Quando buscar por "<curso>" na pesquisa de cursos
        E escolher seguir
        Então deverá ser exibido a mensagem "<msg>"
        Exemplos:
            | curso           | msg                                           |
            | LoremIpsumLorem | Infelizmente, não encontramos resultados para |
    
    Esquema do Cenário: Busca por curso com sucesso
        Quando buscar por "<curso>" na pesquisa de cursos
        E escolher seguir
        Então deverão ser exibidos os cursos na página referente a pesquisa realizada
        Exemplos:
            | curso |
            | BDD   |

    Esquema do Cenário: Validar cursos por categoria
        Quando acessar a opção de Categorias 
        E escolher a categoria "<categoria>", "<subcategoria>"
        E seguir com a busca
        Então deverão ser exibidos os cursos na página referente a categoria escolhida
        Exemplos:
            | categoria     | subcategoria        |
            | TI e software | Certificações de TI |
