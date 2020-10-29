#language: pt
#utf-8

@json-api @json-get
Funcionalidade: Buscar os comentarios existentes na base

    @json-get-all-comments
    Cenario: Buscar por todos os comentarios existentes
        Quando eu buscar por todos os comentarios existentes
        Entao meu retorno nao deve ser vazio 
        E o response code da minha requsicao deve ser 200

    @json-get-failure
    Cenario: Buscar por um comentario inexistente
        Quando eu buscar por um comentario inexistente 
        Entao meu retorno deve ser uma lista de registros vazia
        E o response code da minha requsicao deve ser 404