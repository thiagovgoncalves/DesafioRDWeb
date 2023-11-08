module LoginHelper
    def fazer_login(username, password)
      @test = LoginPage.new
      @test.load
      @test.userLogin(username, password)
      @home = HomePage.new
    end
end

module AdminHelper
    def go_to_admin
      @home = HomePage.new
      @home.load
      @home.adminRegister
    end
end

module SearchHelper
    def search_user
      @search = SearchPage.new
      @search.load
      @search.userSearch
    end
  end