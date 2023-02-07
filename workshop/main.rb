require_relative "./selenium.rb"
class LoginFlow
    extend SeleniumFramework
    
    
    
    def self.navigate_to_website
        driver = setup("https://www.cocoleni.in/")
    end
    
    def self.login
        
        sleep(15)
        chk = checkDisplay(:class,"mc-modal-bg")
        if chk 
            clickElement(:class,"mc-closeModal")
        end
 		clickElement(:xpath,"/html/body/header/nav/div/div/div/div[2]")
 		enterText(:id,"LoginForm_username","test@mail.com")
 		enterText(:id,"LoginForm_password","ttestword")
 		clickElement(:name,"yt0")
    end
    

    def self.signup
        #setup("https://www.cocoleni.in/")
        chk = checkDisplay(:class,"mc-modal-bg")
        if chk 
            clickElement(:class,"mc-closeModal")
        end
 		clickElement(:xpath,"/html/body/header/nav/div/div/div/div[2]")
 		enterText(:id,"User_email","test@mail.com")
 		enterText(:id,"password","ttestword")
 		clickElement(:name,"yt1")
    end

    def self.search
        #setup("https://www.cocoleni.in/")
        chk = checkDisplay(:class,"mc-modal-bg")
        if chk 
            clickElement(:class,"mc-closeModal")
        end
        clickElement("xpath","/html/body/header/nav/div/div/div/div[1]")
        enterText(:id,"search","Novalis")
        enterText(:id,"search",:enter)
      
    end
    quit_browser()
    
    
end

LoginFlow.login
LoginFlow.signup
LoginFlow.search
