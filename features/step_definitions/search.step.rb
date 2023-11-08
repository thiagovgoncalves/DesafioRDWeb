World(LoginHelper, AdminHelper, SearchHelper)

Dado('que um admin logado acessou a área de gerenciamento de usuários') do
    fazer_login(CREDENTIAL[:user][:username], CREDENTIAL[:user][:password])
  end
  
  Quando('buscar pelo nome de um Admin') do
    go_to_admin
    search_user
  end
  
  Então('o registro deverá ser exibido') do
    @search.foundUser
  end
