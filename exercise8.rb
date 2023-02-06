require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://www.globalsqa.com/demo-site/sliders/#Steps"
    end

    def action
        wait =  Selenium::WebDriver::Wait.new(:timeout => 35)
        begin
            @driver.get(@url)
            slider = wait.until { @driver.find_element(:class, "ui-slider-handle") }
            @driver.action.click_and_hold(slider).move_by_offset(100,130).release.perform;
            #@driver.action.key_down(:control).perform
            #@driver.action.drag_and_drop_by(slider, 100, 150).perform
            puts "Slided successfully"
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