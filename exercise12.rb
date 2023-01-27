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
            search.send_keys(hotel)
            search.send_keys(:enter)
            option = @wait.until{ @driver.find_element(:css,"html body div.wrapper div.container-fluid.listing-wapper.listing-option3 div.row div.col-md-12 div.row div.col-md-12 div.row div.col-md-12.text-center form label.radio-inline input")}
            option.click
            @driver.find_element(:css,".panel-body > h5:nth-child(13) > a:nth-child(1)").click
            puts "Checkout the hotel"
        rescue Exception => e
            puts e.message
        
        end
    end

    def getBeaches
        menu = @wait.until{@driver.find_element(:css,"html body div.wrapper header div.navbar div.navbar-collapse.collapse ul.nav.navbar-nav.navbar-right li.dropdown-aux a.navbar-toggle.navbar-toggle-aside-menu")}
        menu.click
        @driver.find_element(:css,".asideMenu-nav > ul:nth-child(1) > li:nth-child(6) > a:nth-child(1)").click
        @driver.find_element(:css,".container-fluid > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1) > img:nth-child(1)").click
        puts "Beach Information:"
        puts @driver.find_element(:css,".col-md-9 > div:nth-child(2) > div:nth-child(1) > p:nth-child(1)").text
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