World(LoginHelper, AdminHelper, SearchHelper)

Dado('que um usuário logado buscou pelo nome de um Admin') do
    fazer_login(CREDENTIAL[:user][:username], CREDENTIAL[:user][:password])
    go_to_admin
    search_user
    @search.foundUser
  end
  
  Quando('clicar no botao de exclusao e confirmar') do
    @delete = DeletePage.new
    @delete.load
    @delete.userDelete
  end
  
  Entao('o admin deverá ser excluido e uma mensagem de sucesso exibida') do
    @delete.checkDeleteSuccess
  end