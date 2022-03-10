#language: pt
@regressivo

Funcionalidade: Página da codesh
    Para que eu possa me cadastrar e conseguir uma colocação no mercado 
    Sendo um candidato
    Posso acessar a página da codesh

Cenario: Página válida
    Dado que digito o endereço no navegador
    Quando a pagina é carregada
    Entao devo estar na home da coodesh

Cenario: Navegar página de login 
    Dado que estou na home da coodesh
    Quando clico no botão de login e após sou developer
    Entao devo acessar a página para o cadastro

Cenario: Criar user
     Quando insiro os seguintes dados:
        | nome  | Kareen Abdul         |
        | email | kareen@sdxacxg.com   |
        | senha | Pwd1234*             |
    Entao devo submeter o formulário e ser direcionado a página de perfil

Cenario: Perfil de usuário
    Dado que continuo com o preenchimento
    Quando insiro os dados solicitados
    Entao posso concluir o cadastro

Cenario: Buscar empresas
    Dado que acesso a pagina de vagas
    Quando pesquiso por uma empresa ou cargo
    Entao vejo uma ou mais vagas para meu perfil    