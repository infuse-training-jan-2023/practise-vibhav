require "test/unit"
require_relative './selenium.rb'

class SeleniumFrameworkTest < Test::Unit::TestCase
    include SeleniumFramework


    def test_start_incorrectURl
        assert_equal("Invalid url error",start("hello"))
   end 

    def test_start_nilvalue
        assert_equal("Invalid url error",start(nil))
    end 

    def test_start_correctURlhttps
        assert_equal("url opened",start("https://www.google.com"))
    end 

    def test_start_correctURlhttp
        assert_equal("url opened",start("http://dcstlams.unigoa.ac.in"))
    end 
    
    def test_clickElement
    	assert_equal("Invalid input error",clickElement(nil,nil))
    end
    
    def test_enterText
    	assert_equal("Invalid input error",enterText(nil,nil,nil))
    end
    
    def test_getElement
    	assert_equal("Invalid input error",getElement(nil,nil))
    end
    
    def test_getElementsInside
   		 assert_equal("Invalid input error",getElementsInside(nil,nil,nil))
    end

end