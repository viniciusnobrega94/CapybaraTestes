Quando("entro no iframe e preencho os campos") do
    visit '/mudancadefoco/iframe'
    #mudando o foco para o iframe
    within_frame('id_do_iframe') do
    #iremos fazer as açoes dentro do iframe
    fill_in(id: 'first_name', with: 'Teste')
    fill_in(id: 'last_name', with:'Testando')
    fill_in(id: 'password', with:'testesenha')
    fill_in(id: 'email', with:'Tes@ando.com')
    fill_in(id: 'textarea1', with:'Testando Testando')
    
    end
end
  
Quando("entro no modal e verifico o texto") do
   visit '/mudancadefoco/modal'
   find('a[href="#modal1"]').click
   within('#modal1')do
   texto = find('h4')
   expect(texto.text).to eql 'Modal Teste'
   find('.modal-close').click
sleep(5)
end

end
