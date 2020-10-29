#language: pt
#utf-8

@json-api @json-post
Funcionalidade: Criar um novas postagens

    @json-new-post-success
    Cenario: Criar uma nova postagem com sucesso para qualquer usuario
        Quando eu informar os dados para a criacao de uma nova postagem 
        Entao ele deve ser criado com sucesso
        E um id para ele deve ser gerado

    @json-new-post-failed
    Cenario: Falha na criacao de uma nova postagem
        Quando eu informar a url incorreta para a criacao de uma nova postagem
        Entao a minha chamada deve falhar retornando 404