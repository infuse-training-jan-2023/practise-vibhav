require 'selenium-webdriver'

class GetOptions

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://letcode.in/forms"
    end

    def printOptions
        begin
            @driver.get(@url)
           
            select = @driver.find_element(:tag_name, "select")
            select = driver.find_element(:class, "select")
            puts select.text
            sleep(5)
        rescue Exception => e
            e.message
        ensure
            @driver.quit
        end
    end
    

end

getOptionsObject = GetOptions.new
getOptionsObject.setup
getOptionsObject.printOptions
