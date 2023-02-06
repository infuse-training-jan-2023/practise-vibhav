require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://the-internet.herokuapp.com/tables"
    end

    def action(val)
        begin
            @driver.get(@url)
           
            select = @driver.find_elements(:tag_name, "td")
            if val < 0 or val > select.length
                raise "Val out of bounds"
            end
            puts select[val].text
           
        rescue Exception => e
            e.message
        ensure
            @driver.quit
        end
    end
    

end

obj = Exercise.new
obj.setup
obj.action(2)