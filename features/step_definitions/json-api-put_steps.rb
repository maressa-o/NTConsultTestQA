#@json-put-success
Quando('eu informar o novo telefone do usuario') do
    params = @JSON_API.user_body($userId_success, $phone_number)
    @response = @JSON_API.update_user(RESOURCES[:USERS], $userId_success, params)
end

Entao('meu numero deve ser alterado com sucesso') do
    expect(@response.body).nil?
    expect(@response['phone']).to eq($phone_number)
end

Entao('o codigo de retorno da minha requisicao deve ser {int}') do |code|
    expect(@response.code).to eq(code)
    
    payload = JSON.parse(@response.body)
    log(JSON.pretty_generate(payload))
end

#@json-put-failure
Quando('eu informar o novo telefone do usuario inexistente') do
    params = @JSON_API.user_body($userId_failure, $phone_number)
    @response = @JSON_API.update_user(RESOURCES[:USERS], $userId_failure, params)
  end
  
  Entao('a alteracao deve falhar com o codigo de retorno {int}') do |code|
    expect(@response.code).to eq(code)
  end