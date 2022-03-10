Dado('que estou na página inicial') do
    expect(page).to have_current_path('https://beta.coodesh.com/', url: true)
end
  
Quando('clico no botão de login') do
    click_on "OK"
    
end
      
Entao('devo ver pagina correspondente') do
    @message = find('h2[class*=h3]')
    expect(@message.text).to eql 'Faça o login'
end
  
Dado('que acesso a pagina para cadastrar') do
    visit "https://beta.coodesh.com/auth/signup/candidates"
    click_on "OK"
end
  
Quando('insiro os meus dados:') do |table|
    user = table.rows_hash
    find("[placeholder='Nome Completo']").set user[:nome]
    find("[placeholder='email@example.com']").set user[:email]
    find("[placeholder='********']").set user[:senha]
    #find(:xpath, "//label[@for='privacy.gpdr']").click
    find(:id, "privacy.gpdr", visible:false).click(0, 0)
    click_on "Inscreva-se"
end
  
Entao('devo ser direcionado a pagina de perfil') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Dado('visito a página de perfil') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('preencho os dados solicitados') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Entao('devo ser encaminhado para página correspondente') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Dado('que acesso a pagina de vagas') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('pesquiso por uma empresaa') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Entao('devo ver uma ou mais vagas validas') do
    pending # Write code here that turns the phrase above into concrete actions
end
  