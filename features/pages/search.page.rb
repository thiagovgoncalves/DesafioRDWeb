class SearchPage < SitePrism::Page 
    
    set_url 'https://opensource-demo.orangehrmlive.com/web/index.php/admin/viewSystemUsers'
    element :buttonExpand, :css, ":nth-child(3) > .oxd-icon-button"
    element :nameSearch, :css, ":nth-child(2) > .oxd-input"
    element :searchButton, :css, ".oxd-form-actions > .oxd-button--secondary"
    element :userFound, :css, ".card-body-slot > :nth-child(1) > .oxd-table-card-cell > .data"

    def userSearch
        buttonExpand.click
        nameSearch.set "TesteRD"
        searchButton.click
    end

    def foundUser
        expect(userFound.text).to eql "TesteRD"
    end

end