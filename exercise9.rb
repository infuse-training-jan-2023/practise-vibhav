require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://cosmocode.io/automation-practice-webtable"
    end

    def action
        begin
            @driver.get(@url)
           
            select = @driver.find_element(:tag_name, "tr")
            #puts select
            all_headers = select.find_elements(:tag_name, "strong")
            all_headers.each do |header|
                puts header.text
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