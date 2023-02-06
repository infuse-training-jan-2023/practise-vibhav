require 'selenium-webdriver'

class GetTableRows

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://cosmocode.io/automation-practice-webtable"
    end

    def printRow
        begin
            @driver.get(@url)
            all_headers = @driver.find_element(:css, "#countries > tbody:nth-child(1) > tr:nth-child(1)")
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

getTableRowsObject = GetTableRows.new
getTableRowsObject.setup
getTableRowsObject.printRow
