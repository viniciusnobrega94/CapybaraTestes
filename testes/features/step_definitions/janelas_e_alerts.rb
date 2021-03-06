Quando("eu entro na janela e verifico a mensagem") do
    visit'/mudancadefoco/janela'
    #janela recebe outra janela aberta pelo link
    janela = window_opened_by do
        click_link 'Clique aqui'
end

#muda de foco para a janela
within_window janela do
    expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
    janela.close
    
end

#segunda opção

click_link 'Clique aqui'
#mudando para ultima aba
switch_to_window windows.last
expect(current_url).to eql 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eql 'Você Abriu uma nova janela!!'
    windows.last.close
end

Quando("eu entro no alert e verifico faco a acao") do
    visit '/mudancadefoco/alert'
    find('button[onclick="jsAlert()"]').click
    page.accept_alert

    find('button[onclick="jsConfirm()"]').click
    sleep(3)
    page.dismiss_confirm
    
    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Teste Vinicius')
    page.dismiss_prompt
    sleep(4)

end