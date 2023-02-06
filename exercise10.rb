require 'selenium-webdriver'

class GetColumn

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://computer-database.gatling.io/computers"
    end

    def printText(val)
        wait = Selenium::WebDriver::Wait.new(:timeout => 30)
        begin
            @driver.get(@url)
            wait.until { @driver.find_element(:id, "main") }
            rows = @driver.find_elements(:tag_name, "tr")
            cols = @driver.find_elements(:tag_name, "th")
            if val < 0 or val > cols.length
                raise "Index out of bound error"
            end
             rows.each_with_index do |row, index|
                columns = row.find_elements(:tag_name, "td")
                columns.each_with_index do |column, index|
                    if index == val
                        puts column.text
                    end
                end
            end
        rescue Exception => e
            e.message
        ensure
            @driver.quit
        end
    end
    

end

getColumnOject = GetColumn.new
getColumnOject.setup
getColumnOject.printText(1)
