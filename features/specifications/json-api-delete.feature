#language: pt
#utf-8

@json-api @json-delete
Funcionalidade: Realizar a delecao de registros

    Esquema do Cenario: Excluir os registros especificados
        Quando eu informar a foto de id <id>
        Entao o codigo da retorno da minha requisicao deve ser <code>

        Exemplos:
        |     id     |   code   |
        |    "376"   |    200   |
        |     ""     |    404   |

    