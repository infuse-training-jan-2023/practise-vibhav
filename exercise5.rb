require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://www.google.com/"
    end

    def action
        begin
            @driver.get(@url)
            search_bar = @driver.find_element(:name,"q")
            search_bar.send_keys("Hello World")
            sleep(3)
            search_bar.send_keys(:enter)
            sleep(3)
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