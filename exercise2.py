class ArrayManipulation:
		
   def validate_input(arr,index):
	if len(arr) < 1 :
                raise AttributeError
            if index > len(arr) or index < 0:
                raise IndexError 
	
   def element_at(arr,index):
        try:
            validate_input(arr,index)
            return arr[index]
        except IndexError:
            return "Index value is out of bounds"
        except AttributeError:
            return "Array size should be greater than 0"

    def inclusive_range(arr,start_pos,end_pos):
        try: 
            validate_input(arr,index)
            return arr[start_pos:end_pos+1]
        except IndexError:
           return "Position value out of bound"
        except AttributeError:
            return "Array size should be greater than 0"
    
    def non_inclusive_range(arr,start_pos,end_pos):
        try: 
            validate_input(arr,index)
            return arr[start_pos:end_pos]
        except IndexError:
           return "Position value out of bound"
        except AttributeError:
            return "Array size should be greater than 0"
    
    def start_and_length(arr,start_pos,length):
        try: 
            validate_input(arr,index)
            return arr[start_pos:start_pos+length]
        except IndexError:
           return "Position value out of bound"
        except AttributeError:
            return "Array size should be greater than 0"
