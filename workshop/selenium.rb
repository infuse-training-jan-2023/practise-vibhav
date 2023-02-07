
require 'selenium-webdriver'
require 'uri'

module SeleniumFramework

    $driver
    $wait

    def start(url)
        begin
            options = Selenium::WebDriver::Chrome::Options.new
            options.add_argument('--headless')
            options.add_argument("--no-sandbox");
            options.add_argument("--disable-dev-shm-usage");
            Selenium::WebDriver::Chrome::Service.driver_path = "/usr/local/bin/chromedriver"
            $driver = Selenium::WebDriver.for :chrome ,  options: options
            $wait = Selenium::WebDriver::Wait.new(:timeout => 80)
            if url =~ /\A#{URI::regexp(['http', 'https'])}\z/
                @url=url
                $driver.get(@url)
                #$driver.manage.window.maximize
                #max_width, max_height = $driver.execute_script("return [window.screen.availWidth, window.screen.availHeight];")
                $driver.manage.window.resize_to(1920, 1000)
                puts "Website visited #{url}"
                return "url opened"
            else
                raise "Invalid url error"
            end
        rescue Exception => e
            puts e.message
            return e.message
        end
        
    end
    
    def intialze(driver)
	$driver=driver
    end
	
	
    def clickElement(identifier,entity_val)
        begin 
            if identifier==nil or  entity_val==nil
                raise "Invalid input error"
            end
            element = getElement(identifier,entity_val)
            puts "Element to be clicked #{element}"
            element.click
        rescue Exception => e
            puts e.message
            return e.message
        end
    end

    def enterText(identifier,entity_val,message)
        begin 
            if identifier==nil or  entity_val==nil or message==nil
                raise "Invalid input error"
            end
            
        	element = $driver.find_element(identifier,entity_val)
        	puts "Text to be entered in #{element}"
        	element.send_keys(message)
        rescue Exception => e
            puts e.message
            return e.message
        end
    end
    
    def getElement(identifier,entity_val)
    	begin
    		if identifier==nil or  entity_val==nil 
                raise "Invalid input error"
            end
    		return $driver.find_element(identifier,entity_val)
    	rescue Exception => e
            puts e.message
            return e.message
        end
    end
       
    def getElementsInside(inside,identifier,entity_val)
    	begin
    		if identifier==nil or  entity_val==nil or inside==nil
                raise "Invalid input error"
            end
    		return inside.find_elements(identifier,entity_val)
    	rescue Exception => e
            puts e.message
            return e.message
        end
    end
    			
    def driver
	    $driver
    end 
	
    def checkDisplay(identifier,entity_val)
		begin
    		element = $wait.until{$driver.find_element(identifier,entity_val)}
    		return element.displayed?
    	rescue Exception => e
    		puts e.message
    	end
    end
    
    def driver 
    	return $driver
    end
	
    
    def quit_browser()
    	$driver.quit
    	return "exited successfully"
    end

end

