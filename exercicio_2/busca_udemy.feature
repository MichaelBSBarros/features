#language: pt

Funcionalidade: Busca
    Como usuário do site Udemy
    Quero poder buscar cursos
    Para poder compra-los

    Contexto:
        Dado que esteja na home do Udemy
        E buscar por "<curso>" na pesquisa de cursos

    Esquema do Cenário: Busca por curso sem sucesso
        Quando escolher seguir
        Então deverá ser exibido a mensagem "<msg>"
        Exemplos:
            | curso           | msg                                           |
            | LoremIpsumLorem | Infelizmente, não encontramos resultados para |
    
    Esquema do Cenário: Busca por curso com sucesso
        Quando escolher seguir
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

    Esquema do Cenário: Cursos no carrossel
        Quando validar a sessão "<carrossel>" na página
        Então deverão ser exibidos os cursos "<msg>"
        Exemplos:
            | carrossel                  | msg       |
            | Alunos estão assistindo    | em alta   |
            | Para você que procurou por | sugeridos |
