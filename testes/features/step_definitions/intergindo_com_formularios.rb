Quando("eu faco cadastro") do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Vinicius')
    find('#user_lastname').set('Nobrega')
    find('#user_email').send_keys('viniciusteste@teste.com')
    fill_in(id: 'user_address', with: 'Av. Estados Unidos, 580')
    find('#user_university').set('Fundação Santo André')
    find('#user_profile').send_keys('Analista de Testes')
    fill_in(id: 'user_gender', with: 'Masculino')
    find('#user_age').send_keys('25')
    find('input[value="Criar"]').click
    sleep(10)
  end
  
  Entao("verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eq 'Usuário Criado com sucesso'
  end