require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://www.bing.com/"
    end

    def action
        begin
            @driver.get(@url)
            sleep(5)
            @driver.find_element(:class,"mic_cont").click
        rescue Exception => e
            e.message
        ensure
              @driver.quit
        end
    end
    

end

obj = Exercise.new()
obj.setup
obj.action
