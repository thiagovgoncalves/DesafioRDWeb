class RegisterPage < SitePrism::Page 
    
    set_url 'https://opensource-demo.orangehrmlive.com/web/index.php/admin/saveSystemUser'
    element :roleSelect, :css, ":nth-child(1) > .oxd-input-group > :nth-child(2) > .oxd-select-wrapper > .oxd-select-text > .oxd-select-text-input"
    element :roleType, :css, ".oxd-select-dropdown > :nth-child(2)"
    element :nameField,  :css, ".oxd-autocomplete-text-input > input"
    element :nameComplete, :css, ".oxd-autocomplete-dropdown > :nth-child(1)"
    element :statusSelect, :css, ":nth-child(3) > .oxd-input-group > :nth-child(2) > .oxd-select-wrapper > .oxd-select-text"
    element :statusType, :css, ".oxd-select-dropdown > :nth-child(2)"
    element :usernameField, :css, ":nth-child(4) > .oxd-input-group > :nth-child(2) > .oxd-input"
    element :pwdField, :css, ".user-password-cell > .oxd-input-group > :nth-child(2) > .oxd-input"
    element :pwdconfirmField, :css, ":nth-child(2) > .oxd-input-group > :nth-child(2) > .oxd-input"
    element :saveButton, :css, ".oxd-button--secondary"
    element :successMessage, :css, ".oxd-text--toast-title"

    def registerAdmin
        roleSelect.click
        roleType.click
        nameField.set "a"
        sleep 5
        nameComplete.click 
        statusSelect.click
        statusType.click
        usernameField.set "TesteRD"
        pwdField.set "TesteRD123"
        pwdconfirmField.set "TesteRD123"
        saveButton.click
    end

    def checkRegisterSuccess
        expect(successMessage.text).to eql "Success"
    end
    
end