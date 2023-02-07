require "test/unit"
require_relative './challenge5'

class JsonTest < Test::Unit::TestCase

    def test_make_encode_object
        obj = Json.new
    end

    def test_save_content_nil()
        obj = test_make_encode_object
        assert_equal("Empty content error",obj.save_content(nil))
    end

    def test_save_content_blankstring()
        obj = test_make_encode_object
        assert_equal("done",obj.save_content(" "))
    end

    def test_save_content_string()
        obj = test_make_encode_object
        assert_equal("done",obj.save_content("hello"))
    end


    def test_change_name_valid_file()
        obj = test_make_encode_object
        assert_equal("done",obj.change_name("file.json"))
    end

    def test_change_name_invalid_filename()
        obj = test_make_encode_object
        assert_equal("File not found error",obj.change_name("file"))
    end

    def test_change_name_invalid_file()
        obj = test_make_encode_object
        assert_equal("File not found error",obj.change_name("filea.json"))
    end
end