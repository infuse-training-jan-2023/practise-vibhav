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
            all_options = select.find_elements(:tag_name, "option")
            all_options.each do |option|
                puts option.text
            end
        rescue Exception => e
            e.message
        ensure
            @driver.quit
        end
    end
    

end

getOptionsObject = Exercise.new
getOptionsObject.setup
getOptionsObject.printOptions
