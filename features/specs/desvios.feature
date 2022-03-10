#language: pt

Funcionalidade: Desvios 
    Para que eu possa me candidatar uma vaga
    Sendo um canditato
    Posso preencher meus dados para buscar uma vaga

Cenario: Email com caracteres invalidos
    Dado que acesso a pagina de cadastro
    Quando insiro um email inválido
    Entao devo ser exibida mensagem de formato de email não permitido

Cenario: Nome com caracteres inválidos
    Dado que acesso a pagina de cadastro
    Quando insiro um nome fora dos parametros de aceitação
    Entao devo ser exibida mensagem de formato caracteres não permitidos

Cenario: Senha inválida
    Dado que acesso a pagina de cadastro
    Quando insiro uma senha fora dos parametros de aceitação
    Entao devo ser exibida mensagem de formato de senha não permitida

Cenario: Cadastro com campos vazios
    Dado que acesso a pagina de cadastro
    Quando não insiro nenhuma informação nos campos
    Entao devo ser exibida mensagem de falta de preenchimento dos campos

Cenario: validar API Github, Linkedin, Google
    Dado que acesso a pagina de cadastro
    Quando ao utilizar o serviço de cadastro com redes sociais
    Entao devo ser direcionado para API desses serviços

Cenario: Empresa fora do banco de dados
    Dado que acesso a pagina de vagas
    Quando insiro uma empresa fora do banco de dados
    Entao devo ver uma mensagem que não foram encontradas empresas

Cenario: Vaga não encontrada
    Dado que acesso a pagina de vagas
    Quando insiro uma vaga não condizente
    Entao devo ver uma mensagem que não foram encontradas vagas