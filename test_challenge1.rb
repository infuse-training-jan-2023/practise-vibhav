require "test/unit"
require_relative './challenge1'

class ChallengeTest < Test::Unit::TestCase

    def test_make_challenge_object
        obj = Challenge.new
    end

    def test_serial_average_proper_input
        obj = test_make_challenge_object
        assert_equal("002-15.00",obj.serial_average("002-10.00-20.00"))
    end

    def test_serial_average_invalid_format
        obj = test_make_challenge_object
        assert_equal("Input is not in proper format",obj.serial_average("8238278483248"))
    end

    def test_serial_average_alphabetical_input
        obj = test_make_challenge_object
        assert_equal("Input is not in proper format",obj.serial_average("aaa-bb.xx-xx.ee"))
    end

    def test_serial_average_alphanumeric_input
        obj = test_make_challenge_object
        assert_equal("Input is not in proper format",obj.serial_average("aa-10.ii-20.00"))
    end


end
