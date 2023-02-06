require 'selenium-webdriver'

class MaximizeWindow

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
    end

    def maximization
        begin
            @driver.manage.window.maximize
        rescue Exception => e
            e.message
        ensure
            @driver.quit
        end
    end
    

end

maximizeWindowObject = Exercise.new
maximizeWindowObject.setup
maximizeWindowObject.maximization
