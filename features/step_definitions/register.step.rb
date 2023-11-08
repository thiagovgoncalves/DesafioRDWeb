World(LoginHelper, AdminHelper)

Dado('que um usuário logado acessou a área de gerenciamento de usuários e clicou em "Add"') do
    fazer_login(CREDENTIAL[:user][:username], CREDENTIAL[:user][:password])
    go_to_admin
    @home.addUser
  end
  
  Quando('preencher todos os campos corretamente e clicar em Salvar') do
    @register = RegisterPage.new
    @register.load
    @register.registerAdmin
  end
  
  Entao('uma mensagem de sucesso deverá ser exibida') do
    @register.checkRegisterSuccess
  end