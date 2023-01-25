require_relative "./selenium.rb"
class LoginFlow
    extend SeleniumFramework

    def self.login
        setup("https://www.cocoleni.in/")
        checkDisplay(:class,"mc-modal-bg")
        clickElement(:class,"mc-closeModal")
 	clickElement(:xpath,"/html/body/header/nav/div/div/div/div[2]")
 	enterText(:id,"LoginForm_username","test@mail.com")
 	enterText(:id,"LoginForm_password","ttestword")
 	clickElement(:name,"yt0")
 	done
    end

    def self.signup
        setup("https://www.cocoleni.in/")
        checkDisplay(:class,"mc-modal-bg")
        clickElement(:class,"mc-closeModal")
 	clickElement(:xpath,"/html/body/header/nav/div/div/div/div[2]")
 	enterText(:id,"User_email","test@mail.com")
 	enterText(:id,"password","ttestword")
 	clickElement(:name,"yt1")
 	done
    end

    def self.search
        setup("https://www.cocoleni.in/")
        checkDisplay(:class,"mc-modal-bg")
        clickElement(:class,"mc-closeModal")
        clickElement("xpath","/html/body/header/nav/div/div/div/div[1]")
        enterText(:id,"search","Novalis")
        enterText(:id,"search",:enter)
        clickElement(:name,"dropdown")
        clickElement(:xpath,"/html/body/div[3]/div[7]/select[1]/option[5]")
      
    end
    
    
end

LoginFlow.login
LoginFlow.signup
LoginFlow.search

