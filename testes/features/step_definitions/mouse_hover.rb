Quando("seleciono o mouse hover") do
    visit '/iteracoes/mousehover'
    find('.activator').hover
    sleep(5)
end