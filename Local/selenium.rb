require 'selenium-webdriver'
require 'uri'

module SeleniumFramework

    $driver

    def setup(url)
        begin
            options = Selenium::WebDriver::Firefox::Options.new
            options.add_argument('--headless')
            options.add_argument("--no-sandbox");
            options.add_argument("--disable-dev-shm-usage");
            Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
            $driver = Selenium::WebDriver.for :ff #,  options: options
            if url =~ /\A#{URI::regexp(['http', 'https'])}\z/
                @url=url
                $driver.get(@url)
                $driver.manage.window.maximize
                #max_width, max_height = $driver.execute_script("return [window.screen.availWidth, window.screen.availHeight];")
                #$driver.manage.window.resize_to(max_width, max_height)
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

    def clickElement(validator,identity)
        begin 
            if validator==nil or  identity==nil
                raise "Invalid input error"
            end
            element = $driver.find_element(validator,identity)
            puts "Element to be clicked #{element}"
            element.click
        rescue Exception => e
            puts e.message
        end
    end

    def enterText(validator,identity,message)
        begin 
            if validator==nil or  identity==nil or message==nil
                raise "Invalid input error"
            end
            
        element = $driver.find_element(validator,identity)
        puts "Text to be entered in #{element}"
        element.send_keys(message)
        rescue Exception => e
            puts e.message
        end
    end
    
    def getElement(validator,identity)
    	begin
    	if validator==nil or  identity==nil or message==nil
                raise "Invalid input error"
            end
    	return $driver.find_element(validator,identity)
    	rescue Exception => e
            puts e.message
        end
       end
       
    def getElementsInside(inside,validator,identity)
    	begin
    	if validator==nil or  identity==nil or message==nil
                raise "Invalid input error"
            end
    	return inside.find_elements(validator,identity)
    	rescue Exception => e
            puts e.message
        end
       end
    			
    
    def checkDisplay(validator,identity)
	wait = Selenium::WebDriver::Wait.new(:timeout => 30)
	begin
		sleep(20)
    		element = wait.until{$driver.find_element(validator,identity)}
    		return element.displayed?
    	rescue Exception => e
    		puts e.message
    	end
    end
    
    def getDriver 
    	return $driver
    end
    
    def done
    	$driver.quit
    end


end
