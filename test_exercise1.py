import unittest

from exercise1 import SerialAverage
class TestSerialAverage(unittest.TestCase):


	def test_alphabeticalString(self):
		obj = SerialAverage('abd-aa.ef-jj.li')
		output = obj.getAverage()
		assert output == "Input recieved is of invalid format"

	def test_alphanumericString(self):
		obj = SerialAverage('002-aa.00-ss.00')
		output = obj.getAverage()
		assert output == "Input recieved is of invalid format"

	def test_numericString_proper_format(self):
		obj = SerialAverage('002-10.00-20.00')
		output = obj.getAverage()
		assert output == "002-15.00"
	
	def test_numericString_improper_format(self):
		obj = SerialAverage('002-15.00')
		output = obj.getAverage()
		assert output == "Input recieved is of invalid format"

	def test_numericString_noformat(self):
		obj = SerialAverage('00215000909')
		output = obj.getAverage()
		assert output == "Input recieved is of invalid format"
	
	def test_AlphabeticalString_noformat(self):
		obj = SerialAverage('gfjjdhksfksjfbwehdev')
		output = obj.getAverage()
		assert output == "Input recieved is of invalid format"
