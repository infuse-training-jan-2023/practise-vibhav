import unittest

import unittest

from exercise3 import SportsArray
class TestSerialAverage(unittest.TestCase):
    
    def test_skip_sports_positiveskip(self):
        obj = SportsArray
        output = obj.skip_sports(["Tennis","Football","Hocky","Cricket","Swimming"],2)
        assert output == ['2:Hocky', '3:Cricket', '4:Swimming']
        
    def test_skip_sports_negativeskip(self):
        obj = SportsArray
        output = obj.skip_sports(["Tennis","Football","Hocky","Cricket","Swimming"],-2)
        assert output == "Index value is out of bounds"
    
    def test_skip_sports_greatestskip(self):
        obj = SportsArray
        output = obj.skip_sports(["Tennis","Football","Hocky","Cricket","Swimming"],20)
        assert output == "Index value is out of bounds"

    def test_skip_sports_emptyarray(self):
        obj = SportsArray
        output = obj.skip_sports([],2)
        assert output == "Array size should be greater than 0"

