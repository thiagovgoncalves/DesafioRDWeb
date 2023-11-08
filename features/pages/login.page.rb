class LoginPage < SitePrism::Page 
    
    set_url ''
    element :usernameField, :css, ":nth-child(2) > .oxd-input-group > :nth-child(2) > .oxd-input"
    element :passwordField, :css, ":nth-child(3) > .oxd-input-group > :nth-child(2) > .oxd-input"
    element :loginButton,   :css, ".oxd-button"

    def userLogin (username, password)
        usernameField.set (username)
        passwordField.set (password)
        loginButton.click
    end
    
end