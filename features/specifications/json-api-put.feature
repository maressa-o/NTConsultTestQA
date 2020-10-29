#language: pt
#utf-8

@json-api @json-put
Funcionalidade: Realizar alteracoes nos registros de usuarios

    @json-put-success
    Cenario: Alterar o telefone de um usuario com sucesso
        Quando eu informar o novo telefone do usuario
        Entao meu numero deve ser alterado com sucesso
        E o codigo de retorno da minha requisicao deve ser 200

    @json-put-failure
    Cenario: Alterar o telefone de um usuario inexistente
        Quando eu informar o novo telefone do usuario inexistente
        Entao a alteracao deve falhar com o codigo de retorno 500