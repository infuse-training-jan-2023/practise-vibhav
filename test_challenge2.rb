require "test/unit"
require_relative './challenge2'

class ChallengeTest < Test::Unit::TestCase

    def test_make_challenge_object
        obj = Array.new
    end

    def test_element_at_proper
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal(2, obj.element_at(arr, 3))
    end

    def test_element_at_index_wrong
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Index out of bound", obj.element_at(arr, 40))
    end

    def test_element_at_index_negative
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Index out of bound", obj.element_at(arr, -4))
    end

    def test_element_at_array_empty
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Array of insufficient length", obj.element_at([],0))
    end

    def test_element_at_array_single_element
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal(0, obj.element_at([0],0))
    end

    def test_inclusive_range_proper_range
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal([1], obj.inclusive_range(arr,2,3))
    end

    def test_inclusive_range_proper_range_case
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal([1,2], obj.inclusive_range(arr,2,4))
    end

    def test_inclusive_range_greater_end
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("End Position is lesser than start", obj.inclusive_range(arr,8,3))
    end

    def test_inclusive_range_greater_start
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("End Position is lesser than start", obj.inclusive_range(arr,10,3))
    end

    def test_inclusive_range_lower_start
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Array Indexing out of bound", obj.inclusive_range(arr,-1,3))
    end

    def test_inclusive_range_larger_end
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Array Indexing out of bound", obj.inclusive_range(arr,1,30))
    end

    def test_inclusive_range_proper_end
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal([9,5,1], obj.inclusive_range(arr,0,3))
    end

    def test_non_inclusive_range_proper_range
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal([], obj.non_inclusive_range(arr,2,3))
    end

    def test_non_inclusive_range_proper
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal([], obj.non_inclusive_range(arr,2,3))
    end

    def test_non_inclusive_range_greater_end
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("End Position is lesser than start", obj.non_inclusive_range(arr,8,3))
    end

    def test_non_inclusive_range_greater_start
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("End Position is lesser than start", obj.non_inclusive_range(arr,10,3))
    end

    def test_non_inclusive_range_lower_start
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Array Indexing out of bound", obj.non_inclusive_range(arr,-1,3))
    end

    def test_non_inclusive_range_larger_end
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Array Indexing out of bound", obj.non_inclusive_range(arr,1,30))
    end

    def test_non_inclusive_range_proper_end
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal([1,2,3], obj.non_inclusive_range(arr,2,6))
    end

    def test_start_and_length_proper_length
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Incorrect array length error", obj.start_and_length(arr,2,7))
    end

    def test_start_and_length_incorrect_length
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("Incorrect array length error", obj.start_and_length(arr,2,6))
    end

    def test_start_and_length_incorrect_length
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal([1, 2, 3, 4, 0, -1], obj.start_and_length(arr,2,8))
    end

    def test_start_and_length_start_position_greater
        obj = test_make_challenge_object
        arr = [9,5,1,2,3,4,0,-1]
        assert_equal("End Position is lesser than start", obj.start_and_length(arr,10,8))
    end
end

