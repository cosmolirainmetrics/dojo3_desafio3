Quando("cadastrar um novo comentario usando o arquivo de massa") do
    @resposta = PostsApi.new.criar_post(MASSA['criar_comentario'])
  end
  
  Entao("a resposta conterá a mensagem {string}") do | mensagem |
    expect(@resposta.message).to eq(mensagem)
  end
  
  Entao("o status code da resposta será {int}") do | status_code |
    expect(@resposta.code).to eq(status_code)
  end
  
  Quando("buscar o comentario na API usando o id que está no arquivo de massa") do
    @resposta = PostsApi.new.buscar_post(MASSA['buscar_comentario']['id'])
    puts @resposta.body
  end