#language: pt

Funcionalidade: Busca
    Como usuário do site Udemy
    Quero poder buscar cursos
    Para poder compra-los

    Contexto:
        Dado que esteja na home da Udemy        

    Esquema do Cenário: Busca por curso sem sucesso
        Dado que busque por "<curso>" na pesquisa de cursos
        Quando escolher seguir
        Então deverá ser exibido a mensagem "<msg>"
        Exemplos:
            | curso           | msg                                           |
            | LoremIpsumLorem | Infelizmente, não encontramos resultados para |
    
    Esquema do Cenário: Busca por curso com sucesso
        Dado que busque por "<curso>" na pesquisa de cursos
        Quando escolher seguir
        Então deverão ser exibidos os cursos na página referente a pesquisa realizada
        Exemplos:
            | curso |
            | BDD   |

    Esquema do Cenário: Validar cursos por categoria
        Quando acessar a opção de Categorias 
        E escolher a categoria "<categoria>", subcategoria "<subcategoria>"
        E seguir com a busca
        Então deverão ser exibidos os cursos referente a categoria
        Exemplos:
            | categoria     | subcategoria        |
            | TI e software | Certificações de TI |

    Esquema do Cenário: Cursos no carrossel
        Quando validar a sessão "<carrossel>" na página
        Então deverão ser exibidos os cursos "<msg>"
        Exemplos:
            | carrossel                  | msg       |
            | Alunos estão assistindo    | em alta   |
            | Para você que procurou por | sugeridos |
