Dado('que digito o endereço no navegador') do
    visit "/"
end
  
Quando('a pagina é carregada') do
    click_on "OK"
end
  
Entao('devo estar na home da coodesh') do
    expect(page).to have_current_path('https://beta.coodesh.com/', url: true)
    @validacao = find('span[class*=mb-0]')
    expect(@validacao.text).to eql 'Sou developer'
end
  
Dado('que estou na home da coodesh') do
    expect(page).to have_current_path('https://beta.coodesh.com/', url: true)
end
  
Quando('clico no botão de login e após sou developer') do
    find('[class="transition-3d-hover btn btn-primary btn-sm"]').click
    find('[href="/auth/signup/candidates"]').click
end

Entao('devo acessar a página para o cadastro') do
    @validacao = find('[for="displayName"]')
    expect(@validacao.text).to eql 'NOME COMPLETO*'
end
  
Quando('insiro os seguintes dados:') do |table|
    user = table.rows_hash
    find("[placeholder='Nome Completo']").set user[:nome]
    find("[placeholder='email@example.com']").set user[:email]
    find("[placeholder='********']").set user[:senha]
    find(:id, "privacy.gpdr", visible:false).click(0, 0)
    
end
  
Entao('devo submeter o formulário e ser direcionado a página de perfil') do
    click_on "Inscreva-se"

end

Dado('que continuo com o preenchimento') do
    
  end
  
  Quando('insiro os dados solicitados') do

    find('#displayName').set('Kareen Abdul Jabbar')
    find('[type="tel"]').set('88888888888')
    find('[controlid="address.city"]').set('Tuntum')
    find(:id, "career-fullstack", visible:false).click(0, 0)
    find('option[value="searching_asap"]').select_option
    click_on "Próximo"

        
  end
  
  Entao('posso concluir o cadastro') do
    
    find('span', text:'Dev Media').click
    find('div', text: 'Saúde', visible:false).click
    find('option[value="black"]').select_option
    find('option[value="male"]').select_option
    find('option[value="heterosexual"]').select_option
    find('option[value="none"]').select_option
    click_on "Próximo"
    click_on "Pular"
    click_on "Concluir"
      
  end
  
  Quando('pesquiso por uma empresa ou cargo') do

  end
  
  Entao('vejo uma ou mais vagas para meu perfil') do
    pending # Write code here that turns the phrase above into concrete actions
  end