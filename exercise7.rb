require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://testpages.herokuapp.com/styled/basic-html-form-test.html"
    end

    def action(val)
        begin
            @driver.get(@url)
            select = @driver.find_element(:name,"dropdown")
            all_options = select.find_elements(:tag_name, "option")
            if val < 0 or val > all_options.length
                raise "Val out of bounds error"
            end
            puts all_options[val].text
        rescue Exception => e
            puts e.message
        ensure
             @driver.quit
        end
    end
    

end

obj = Exercise.new
obj.setup
obj.action(1)
obj.action(12)