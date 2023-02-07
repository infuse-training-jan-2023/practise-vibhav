require "test/unit"
require_relative './challenge6'

class EncodeTest < Test::Unit::TestCase

    def test_make_encode_object
        obj = Encode.new
    end

    def test_extract_valid_file()
        obj = test_make_encode_object
        assert_equal("done", obj.extract("file.txt"))
    end

    def test_extract_invalid_file()
        obj = test_make_encode_object
        assert_equal("File not found error", obj.extract("file1.txt"))
    end

    def test_extract_wrong_file_name()
        obj = test_make_encode_object
        assert_equal("File not found error", obj.extract("hawa"))
    end

end