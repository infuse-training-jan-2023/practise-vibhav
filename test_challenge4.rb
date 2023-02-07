require "test/unit"
require_relative './challenge4'

class ArrayTest < Test::Unit::TestCase
    def test_make_array_object
        obj = Array.new
    end
    #['cricket','TT','Football','Hockey']
    def test_number_array_empty()
        obj = test_make_array_object
        assert_equal("Empty array error", obj.number_array([]))
    end

    def test_number_array_proper()
        obj = test_make_array_object
        assert_equal(['0:cricket','1:TT','2:Football','3:Hockey'], obj.number_array(['cricket','TT','Football','Hockey']))
    end

    def test_number_array_one_element()
        obj = test_make_array_object
        assert_equal(['0:cricket'], obj.number_array(['cricket']))
    end

    def test_skip_sports_one_element()
        obj = test_make_array_object
        assert_equal(nil, obj.skip_sports(['cricket'],0))
    end

    def test_skip_sports_empty_array()
        obj = test_make_array_object
        assert_equal("Empty array error", obj.skip_sports([],0))
    end

    def test_skip_sports_proper_array()
        obj = test_make_array_object
        assert_equal(['2:Football','3:Hockey'], obj.skip_sports(['cricket','TT','Football','Hockey'],2))
    end

    def test_skip_sports_wrong_skip()
        obj = test_make_array_object
        assert_equal("Skip out of bounds error", obj.skip_sports(['cricket','TT','Football','Hockey'],10))
    end

    def test_skip_sports_negative_skip()
        obj = test_make_array_object
        assert_equal("Skip out of bounds error", obj.skip_sports(['cricket','TT','Football','Hockey'],-1))
    end

end