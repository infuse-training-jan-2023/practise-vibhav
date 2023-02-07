require "test/unit"
require_relative './challenge3'

class HashTest < Test::Unit::TestCase
    def test_make_hash_object
        obj = Hash.new
    end

    def test_add_key_not_present
        obj = test_make_hash_object
        assert_equal({"vibhav"=>"test"},obj.add({},"vibhav","test"))
    end

    def test_add_proper_hash
        obj = test_make_hash_object
        assert_equal({"stud"=>"test","elem2"=>"good","vibhav"=>"test"},obj.add({"stud"=>"test","elem2"=>"good"},"vibhav","test"))
    end

    def test_add_key_present
        obj = test_make_hash_object
        assert_equal("Key already present error",obj.add({"vibhav"=>"intern"},"vibhav","test"))
    end

    def test_add_key_present_twice
        obj = test_make_hash_object
        assert_equal("Key already present error",obj.add({"v"=>"intern","vibhav"=>"gu"},"vibhav","test"))
    end

    def test_retain_integers_empty_hash
        obj = test_make_hash_object
        assert_equal("Empty hash error",obj.retain_integers({}))
    end

    def test_retain_integers_no_integers
        obj = test_make_hash_object
        assert_equal({},obj.retain_integers({"fruit1"=>"mango","strawberry"=>"pink","mango"=>"yellow"}))
    end

    def test_retain_integers_all_integers
        obj = test_make_hash_object
        assert_equal({12=>"12",23=>"23"},obj.retain_integers({12=>"12",23=>"23"}))
    end

    def test_retain_integers_mixvals
        obj = test_make_hash_object
        assert_equal({12=>"12",23=>"23"},obj.retain_integers({12=>"12","gu"=>"unigoa",23=>"23","go"=>"mango"}))
    end

   def test_delete_even_valued_all_odd
        obj = test_make_hash_object
        assert_equal({3=>"good",5=>"nice"},obj.delete_even_valued(3=>"good",5=>"nice"))
   end 

    def test_delete_even_empty_hash
        obj = test_make_hash_object
        assert_equal("Empty hash error",obj.delete_even_valued({}))
    end 

    def test_delete_even_all_even
        obj = test_make_hash_object
        assert_equal({},obj.delete_even_valued({22=>"good",44=>"nice"}))
    end 

    def test_delete_even_mix_values
        obj = test_make_hash_object
        assert_equal({"greetings"=>"good", 3=>"out"},obj.delete_even_valued({22=>"good","greetings"=>"good",3=>"out",44=>"nice"}))
    end 


end