Quando("acesso a url botoes") do
    visit '/buscaelementos/botoes'
  end
  
  Entao("verifico se encontrei todos os elementos") do
    #all busca todos os elementos que contem o all
    #não é necessario colocar o :css
    page.all(:css, '.btn')
    #busca um elemento mapeado
    find('#teste')
    #bbusca pelo id
    find_by_id('teste')
    #busca pelo botao
    find_button(class: 'btn waves-light')
    #busca o primeiro elemento que vontenha o elemento mapeado
    first('.btn')
    #busca por algum link
    find_link(href:'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end