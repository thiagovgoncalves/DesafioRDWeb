class LogoutPage < SitePrism::Page 
    
    set_url 'https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index'
    element :userTab, :css, ".oxd-userdropdown-tab"
    element :logoutButton, :css, ":nth-child(4) > .oxd-userdropdown-link"
    element :homePageText,   :css, ".oxd-text--h5"

    def userLogout
        userTab.click
        logoutButton.click
    end

    def checkLogoutSuccess
        expect(homePageText.text).to eql "Login"
    end
    
end