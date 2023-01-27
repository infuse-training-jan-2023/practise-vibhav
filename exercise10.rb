require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://computer-database.gatling.io/computers"
    end

    def action(val)
        wait = Selenium::WebDriver::Wait.new(:timeout => 30)
        begin
            @driver.get(@url)
            wait.until { @driver.find_element(:id, "main") }
            cols = @driver.find_elements(:css, "thead tr th")
            #puts cols.length
            if val < 0 or val > cols.length
                raise "Index out of bound error"
            end
            puts @driver.find_element(:css, "thead tr th:nth-of-type(#{val}) a").text
            columns = @driver.find_elements(:css, "tbody tr td:nth-of-type(#{val})")
            columns.each do |column| 
                puts column.text
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
obj.action(1)