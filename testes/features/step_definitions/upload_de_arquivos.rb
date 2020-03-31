Quando("eu faco um upload de arquivos") do
    visit '/outros/uploaddearquivos'
    #attach_file('upload','C:\Users\vinic\Desktop\capybarateste\testes\features\SP-2012_Estádio-Morumbi (1).jpg',make_visible: true)
    @foto - file.join(Dir.pwd, 'features\download.jpg')
    attach_file('upload','',make_visible: true)

    sleep(7)
    

  end