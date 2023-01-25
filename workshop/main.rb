require_relative "./selenium.rb"
class LoginFlow
    extend SeleniumFramework

    def self.login
        setup("https://www.urbanladder.com/")
        clickElement(:class,"login-link")
        enterText(:id,"spree_user_email","test@gmail.com")
        enterText(:id,"spree_user_password","passwordTest")
        clickElement(:id,"ul_site_login")
    end

    def self.signup
        setup("https://www.urbanladder.com/")
        clickElement("class","signup-link")
        enterText("id","spree_user_email","test@gmail.com")
        enterText("id","spree_user_password","passwordTest")
        clickElement("name","commit")
    end

    def self.search
        setup("https://www.urbanladder.com/")
        enterText("id","search","table")
        clickElement("id","search_button")
        clickElement("class","caret")
        clickElement("id","price_limit_0-42796")
        clickElement("id","filters_availability_In_Stock_Only")
    end
    
end

LoginFlow.login

