Dado('que um usuário acessou a página de login') do
    @test = LoginPage.new
    @test.load
  end
  
  Quando('inserir credenciais válidas de usuário e senha') do
    @test.userLogin(CREDENTIAL[:user][:username], CREDENTIAL[:user][:password])
  end
  
  Entao('deverá ser redirecionado para o dashboard') do
    @home = HomePage.new
    @home.checkLoginSuccessful
  end

