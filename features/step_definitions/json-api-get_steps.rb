#@json-get-all-comments
Quando('eu buscar por todos os comentarios existentes') do
    @response = $JSON_API.get_data(RESOURCES[:COMMENTS])
  end
  
  Entao('meu retorno nao deve ser vazio') do
    expect(@response.body).nil?
  end


#@json-get-failure
Quando('eu buscar por um comentario inexistente') do
    @response = $JSON_API.get_data(RESOURCES[:NONEXISTENT_COMMENT])
  end
  
  Entao('meu retorno deve ser uma lista de registros vazia') do
    expect(@response.body).to eq('{}')
  end

  Entao('o response code da minha requsicao deve ser {int}') do |code|
    expect(@response.code).to eq(code)

    payload = JSON.parse(@response.body)
    log(JSON.pretty_generate(payload))
  end

