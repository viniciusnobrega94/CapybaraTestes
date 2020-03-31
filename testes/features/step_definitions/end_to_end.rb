Quando("eu cadastro o usuario") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Vinicius')
    find('#user_lastname').set('Nobrega')
    find('#user_email').send_keys('viniciusteste@teste.com')
    find('input[value="Criar"]').click
end
  
Então("verifico se o usuario foi criado com sucesso") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuario Criado com sucesso'
end
  
Quando("edito um usuario") do

end
  
Então("verifico se o usuario foi editado") do
   
end