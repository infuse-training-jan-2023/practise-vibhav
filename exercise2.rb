require 'selenium-webdriver'

class GetTitle

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://www.google.com"
    end

    def displayTitle
        begin
            @driver.get(@url)
            puts "Title of the website : #{@driver.title}"
        rescue Exception => e
            e.message
        ensure
            @driver.quit
        end
    end
    

end

getTitleObject = GetTitle.new
getTitleObject.setup
getTitleObject.displayTitle
