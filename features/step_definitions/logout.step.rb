World(LoginHelper)

Dado('que um usuário está logado no sistema') do
    fazer_login(CREDENTIAL[:user][:username], CREDENTIAL[:user][:password])
  end
  
  Quando('clicar em Logout') do
    @logout = LogoutPage.new
    @logout.load
    @logout.userLogout
  end
  
  Entao('deverá retornar a pagina de Login') do
    @logout.checkLogoutSuccess
  end