Quando('eu informar a foto de id {string}') do |id|
    @response = @JSON_API.delete_photo(RESOURCES[:PHOTOS], id)
  end
  
  Entao('o codigo da retorno da minha requisicao deve ser {int}') do |code|
    expect(@response.code).to eq(code)
  end