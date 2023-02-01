import unittest

from exercise4 import SubArray
class TestSerialAverage(unittest.TestCase):
    
    def test_skip_sports_onesubarray(self):
        obj = SubArray
        output = obj.subarray_sum([2,1,13,4],3)
        assert output == 1

    def test_skip_sports_arrayzerosize(self):
        obj = SubArray
        output = obj.subarray_sum([],3)
        assert output == "Array size should be greater than 0"

    def test_skip_sports_positiveskip(self):
        obj = SubArray
        output = obj.subarray_sum([2,1,1,1,3,13,4],3)
        assert output == 3
        
   