#@json-new-post-success
Quando('eu informar os dados para a criacao de uma nova postagem') do
    title = "Post title test"
    body = "Post body text test"
    $userId = rand(1..10)
    params = $JSON_API.post_body(title, body, $userId)
    @response = $JSON_API.create_post(RESOURCES[:POSTS], params)
  end
  
  Entao('ele deve ser criado com sucesso') do
    expect(@response.body).nil?
    expect(@response['userId']).to eq($userId)
    expect(@response.code).to eq(201)
  end
  
  Entao('um id para ele deve ser gerado') do
    expect(@response.body['id']).nil?

    payload = JSON.parse(@response.body)
    log(JSON.pretty_generate(payload))
  end

#@json-new-post-failed
Quando('eu informar a url incorreta para a criacao de uma nova postagem') do
    title = "Post title test"
    body = "Post body text test"
    userId = rand(1..10)
    params = $JSON_API.post_body(title, body, userId)
    @response = $JSON_API.create_post(RESOURCES[:INCORRECT_POSTS], params)
  end
  
  Entao('a minha chamada deve falhar retornando {int}') do |code|
    expect(@response.code).to eq(code)
  end