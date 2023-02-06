require 'selenium-webdriver'

class Exercise

    def setup
        Selenium::WebDriver::Firefox::Service.driver_path = "/home/vibhav/Desktop/INFUSE/driver/geckodriver"
        @driver = Selenium::WebDriver.for :ff
        @url = "https://www.goaholidayhomes.com/"
        @driver.get(@url)
        @wait = Selenium::WebDriver::Wait.new(:timeout => 30)

    end

    def searchHotel(hotel)
        begin
            @wait.until{ @driver.find_element(:tag_name,"body")}
            search = @driver.find_element(:name,"search_key")
            search.send_keys(hotel + to_s(:enter))
            option = @wait.until{ @driver.find_element(:name,"option")}
            option.click
            @driver.find_element(:tag_name,"a").click
            puts "Checkout the hotel"
        rescue Exception => e
            puts e.message
        
        end
    end

    def getBeaches
        menu = @wait.until{@driver.find_element(:class,"onscrollmenu")}
        menu.click
        @driver.find_element(:xpath,"/html/body/div/section[1]/div/ul/li[5]/a").click
        @driver.find_element(:class,"img-responsive").click
        puts "Beach Information:"
        puts @driver.find_element(:tag_name,"p").text
    end

    def finish
        @driver.quit
    end

    

end

obj = Exercise.new
obj.setup
obj.searchHotel("Vivanta")
obj.getBeaches
obj.finish
