import unittest

from exercise4 import SubArray
class TestSerialAverage(unittest.TestCase):
   obj = SubArray()    
    def test_skip_sports_onesubarray(self):
        output = obj.subarray_sum([2,1,13,4],3)
        message = "Both the values are equal"
        assertEqual(output, 1, message)

    def test_skip_sports_arrayzerosize(self):
        with pytest.raises(Exception) as e:  
		    obj.subarray_sum([],3)
		    assertEqual(e.type, AttributeError,"Both values are same")


    def test_skip_sports_positiveskip(self):
        output = obj.subarray_sum([2,1,1,1,3,13,4],3)
        message = "Both the values are equal"
        assertEqual(output, 3, message)
