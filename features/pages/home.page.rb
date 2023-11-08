class HomePage < SitePrism::Page 

    set_url 'https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index'
    element :dashboardText, :css, ".oxd-topbar-header-breadcrumb > .oxd-text"
    element :adminButton,   :css, ":nth-child(1) > .oxd-main-menu-item"
    element :addButton, :css, ".oxd-button > .oxd-icon"

    def checkLoginSuccessful
        expect(dashboardText.text).to eql "Dashboard"
    end

    def adminRegister
        adminButton.click
    end

    def addUser
        addButton.click
    end
    
end