import unittest

from exercise2 import ArrayManipulation

	
class TestSerialAverage(unittest.TestCase):


    def test_element_at_negativeindex(self):
        obj = ArrayManipulation
        output = obj.element_at([9,5,1,2,3,4,0,-1],-2)
        assert output == "Index value is out of bounds"
        
    def test_element_at_emptyarray(self):
        obj = ArrayManipulation
        output = obj.element_at([],2)
        assert output == "Array size should be greater than 0"

    def test_element_at_greaterindex(self):
        obj = ArrayManipulation
        output = obj.element_at([1],2)
        assert output == "Index value is out of bounds"

    def test_element_at_zeroindex(self):
        obj = ArrayManipulation
        output = obj.element_at([1],0)
        assert output == 1

    def test_element_at_properindex(self):
        obj = ArrayManipulation
        output = obj.element_at([1,2,3,4],2)
        assert output == 3

    def test_inclusive_range_negativeindices(self):
        obj = ArrayManipulation
        output = obj.inclusive_range([1,2,3,4,5],-1,-3)
        assert output == "Position value out of bound"

    def test_inclusive_range_positiveindices(self):
        obj = ArrayManipulation
        output = obj.inclusive_range([1,2,3,4,5],2,3)
        assert output == [3,4]

    def test_inclusive_range_emptyarray(self):
        obj = ArrayManipulation
        output = obj.inclusive_range([],2,3)
        assert output == "Array size should be greater than 0"
    
    def test_inclusive_range_zeroindices(self):
        obj = ArrayManipulation
        output = obj.inclusive_range([1,2,3],0,0)
        assert output == [1]

    def test_non_inclusive_range_negativeindices(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([1,2,3,4,5,6,7],-1,-3)
        assert output == "Position value out of bound"

    def test_non_inclusive_range_positiveindices(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([1,2,3,4,5,6,7],2,3)
        assert output == [3]

    def test_non_inclusive_range_positiveindice(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([1,2,3,4,5,6,7],2,6)
        assert output == [3,4,5,6]

    def test_non_inclusive_range_emptyarray(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([],2,3)
        assert output == "Array size should be greater than 0"
    
    def test_non_inclusive_range_zeroindices(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([1,2,3],0,0)
        assert output == []  

    def test_non_inclusive_range_end_greater(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([1,2,3],0,100)
        assert output == "Position value out of bound" 

    def test_start_and_length_positiveindices(self):
        obj = ArrayManipulation
        output = obj.start_and_length([1,2,3,4,5],0,2)
        assert output == [1,2]

    def test_start_and_length_negativeindices(self):
        obj = ArrayManipulation
        output = obj.start_and_length([1,2,3,4,5],0,-2)
        assert output == "Position value out of bound" 
    
    def test_start_and_length_emptyarray(self):
        obj = ArrayManipulation
        output = obj.start_and_length([],0,-2)
        assert output == "Array size should be greater than 0" 
    
    
