import unittest

from exercise2 import ArrayManipulation

	
class TestSerialAverage(unittest.TestCase):


    def test_element_at_negativeindex(self):
        obj = ArrayManipulation
	with pytest.raises(Exception) as e:  
		    obj.element_at([9,5,1,2,3,4,0,-1],-2)
		    message = "Both the values are equal"
                    assertEqual(e.type, TypeError, message)
        
    def test_element_at_emptyarray(self):
        obj = ArrayManipulation
        with pytest.raises(Exception) as e:  
		    obj.element_at([],2)
		    message = "Both the values are equal"
                    assertEqual(e.type, AttributeError, message)

    def test_element_at_greaterindex(self):
        obj = ArrayManipulation
        with pytest.raises(Exception) as e:  
		    obj.element_at([1],2)
		    message = "Both the values are equal"
                    assertEqual(e.type, TypeError, message)

    def test_element_at_zeroindex(self):
        obj = ArrayManipulation
        output = obj.element_at([1],0)
        message = "Both the values are equal"
        assertEqual(output, 1, message)

    def test_element_at_properindex(self):
        obj = ArrayManipulation
        output = obj.element_at([1,2,3,4],2)
        message = "Both the values are equal"
        assertEqual(output, 3, message)


    def test_inclusive_range_negativeindices(self):
        obj = ArrayManipulation
        with pytest.raises(Exception) as e:  
		    obj.inclusive_range([1,2,3,4,5],-1,-3)
		    message = "Both the values are equal"
                    assertEqual(e.type, TypeError, message)

    def test_inclusive_range_positiveindices(self):
        obj = ArrayManipulation
        output = obj.inclusive_range([1,2,3,4,5],2,3)
       assertEqual(output, [3,4], message)

    def test_inclusive_range_emptyarray(self):
        obj = ArrayManipulation
        output = obj.inclusive_range([],2,3)
        assert output == "Array size should be greater than 0"
    
    def test_inclusive_range_zeroindices(self):
        obj = ArrayManipulation
        output = obj.inclusive_range([1,2,3],0,0)
        assertEqual(output, [1], message)

    def test_non_inclusive_range_negativeindices(self):
        obj = ArrayManipulation
        with pytest.raises(Exception) as e:  
		    obj.non_inclusive_range([1,2,3,4,5,6,7],-1,-3)
		    message = "Both the values are equal"
                    assertEqual(e.type, TypeError, message)

    def test_non_inclusive_range_positiveindices(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([1,2,3,4,5,6,7],2,3)
        assertEqual(output, [3], message)

    def test_non_inclusive_range_positiveindice(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([1,2,3,4,5,6,7],2,6)
        assertEqual(output, [3,4,5,6], message)

    def test_non_inclusive_range_emptyarray(self):
        obj = ArrayManipulation
        with pytest.raises(Exception) as e:  
		    obj.non_inclusive_range([],2,3)
		    message = "Both the values are equal"
                    assertEqual(e.type, AttributeError, message)
    
    def test_non_inclusive_range_zeroindices(self):
        obj = ArrayManipulation
        output = obj.non_inclusive_range([1,2,3],0,0)
        assertEqual(output, [], message)

    def test_non_inclusive_range_end_greater(self):
        obj = ArrayManipulation
        with pytest.raises(Exception) as e:  
		    obj.non_inclusive_range([1,2,3],0,100)
		    message = "Both the values are equal"
                    assertEqual(e.type, TypeError, message)

    def test_start_and_length_positiveindices(self):
        obj = ArrayManipulation
        output = obj.start_and_length([1,2,3,4,5],0,2)
        assertEqual(output, [1,2], message)

    def test_start_and_length_negativeindices(self):
        obj = ArrayManipulation
        with pytest.raises(Exception) as e:  
		    obj.start_and_length([1,2,3,4,5],0,-2)
		    message = "Both the values are equal"
                    assertEqual(e.type, IndexError, message)
    
    def test_start_and_length_emptyarray(self):
        obj = ArrayManipulation
        with pytest.raises(Exception) as e:  
		    obj.start_and_length([],0,-2)
		    message = "Both the values are equal"
                    assertEqual(e.type, AttributeError, message)

    
    
