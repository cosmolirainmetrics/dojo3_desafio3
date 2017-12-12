#language: pt
#utf-8

Funcionalidade: Controlar Comentarios
    Eu como aplicação cliente
    Quero cadastrar um comentário e buscar um comentário especifico
    Para listá-los em uma determinada tela

@post
Cenario: Cadastrar comentario
    Quando cadastrar um novo comentario usando o arquivo de massa
    Entao a resposta conterá a mensagem "Created"
    E o status code da resposta será 201    


@getId
Cenario: Buscar um comentario 
    Quando buscar o comentario na API usando o id que está no arquivo de massa 
    Entao a resposta conterá a mensagem "OK"
    E o status code da resposta será 200