require "test/unit"
require_relative './selenium.rb'

class SeleniumFrameworkTest < Test::Unit::TestCase
    include SeleniumFramework


    def test_setup_incorrectURl
        assert_equal("Invalid url error",setup("hello"))
    end 

    def test_setup_nilvalue
        assert_equal("Invalid url error",setup(" "))
    end 

    def test_setup_correctURlhttps
        assert_equal("url opened",setup("https://www.google.com"))
    end 

    def test_setup_correctURlhttp
        assert_equal("url opened",setup("http://dcstlams.unigoa.ac.in"))
    end 


end