import unittest

import unittest

from exercise3 import SportsArray
class TestSerialAverage(unittest.TestCase):
    obj = SportsArray()
    def test_skip_sports_positiveskip(self):
        output = obj.skip_sports(["Tennis","Football","Hocky","Cricket","Swimming"],2)
        assertEquals(output,['2:Hocky', '3:Cricket', '4:Swimming'],"Both values are same")
        
    def test_skip_sports_negativeskip(self):
        with pytest.raises(Exception) as e:  
		   obj.skip_sports(["Tennis","Football","Hocky","Cricket","Swimming"],-2)
		    assert e.type == IndexError
    
    def test_skip_sports_greatestskip(self):
        with pytest.raises(Exception) as e:  
		    obj.skip_sports(["Tennis","Football","Hocky","Cricket","Swimming"],20)
		    assert e.type == IndexError

    def test_skip_sports_emptyarray(self):
        with pytest.raises(Exception) as e:  
		    obj.skip_sports([],2)
		    assert e.type == AttributeError
