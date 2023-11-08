class DeletePage < SitePrism::Page 
    
    set_url 'https://opensource-demo.orangehrmlive.com/web/index.php/admin/viewSystemUsers'
    element :buttonDelete, '.oxd-icon-button i.bi-trash'
    element :buttonConfirm, :css, ".oxd-button--label-danger"
    element :successMessage, :css, ".oxd-text--toast-title"

    def userDelete
        find('.oxd-icon-button i.bi-trash', match: :first).click
        buttonConfirm.click
    end

    def checkDeleteSuccess
        expect(successMessage.text).to eql "Success"
    end

end