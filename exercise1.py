import re
class SerialAverage:
	
	def __init__(self,inputString : str) -> None:
		self.inputString = inputString


	def validateString(self): 
		validate = re.compile(r'^[0-9]{3}-[0-9]{2}.[0-9]{2}-[0-9]{2}.[0-9]{2}')
		if bool(re.match(validate, self.inputString)) == False:
			raise TypeError
	
	def getAverage(self):
		try:
			self.validateString()
			resStr = self.inputString.split('-')
			avg = resStr[0]+"-" 	
			avg += str(format((((float(resStr[len(resStr)-2])+float(resStr[len(resStr)-1]))/2)), '.2f'))
			return avg
		except Exception as e:
			raise e

		
#obj = SerialAverage('002-1h.00-20.00')
#print(obj.getAverage())
		

