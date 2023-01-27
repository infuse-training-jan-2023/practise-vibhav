require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://letcode.in/forms"
    end

    def action
        begin
            @driver.get(@url)
           
            select = @driver.find_element(:tag_name, "select")
            #puts select
            all_options = select.find_elements(:tag_name, "option")
            #puts all_options
            all_options.each do |option|
                #puts "Value is: " + option.text #.attribute("value")
                #option.click
                puts option.text
            end
        rescue Exception => e
            e.message
        ensure
            @driver.quit
        end
    end
    

end

obj = Exercise.new
obj.setup
obj.action