import unittest
import pytest

from exercise1 import SerialAverage
class TestSerialAverage(unittest.TestCase):


	def test_alphabeticalString(self):
		obj = SerialAverage('abd-aa.ef-jj.li')
		with pytest.raises(Exception) as e:  
		    obj.getAverage()
		    assert e.type == TypeError 

	def test_alphanumericString(self):
		obj = SerialAverage('002-aa.00-ss.00')
		with pytest.raises(Exception) as e:  
		    obj.getAverage()
		    assert e.type == TypeError 

	def test_numericString_proper_format(self):
		obj = SerialAverage('002-10.00-20.00')
		with pytest.raises(Exception) as e:  
		    obj.getAverage()
		    assert e.type == TypeError 
	
	def test_numericString_improper_format(self):
		obj = SerialAverage('002-15.00')
		with pytest.raises(Exception) as e:  
		    obj.getAverage()
		    assert e.type == TypeError 

	def test_numericString_noformat(self):
		obj = SerialAverage('00215000909')
		with pytest.raises(Exception) as e:  
		    obj.getAverage()
		    assert e.type == TypeError 
	
	def test_AlphabeticalString_noformat(self):
		obj = SerialAverage('gfjjdhksfksjfbwehdev')
		with pytest.raises(Exception) as e:  
		    obj.getAverage()
		    assert e.type == TypeError 
