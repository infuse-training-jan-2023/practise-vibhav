require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://demo.automationtesting.in/Register.html"
    end

    def action
        begin
            @driver.get(@url)
            sleep(3)
            @driver.find_element(:class,"ng-pristine ng-untouched ng-invalid ng-invalid-required").click
            @driver.find_element(:id,"checkbox2").click
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