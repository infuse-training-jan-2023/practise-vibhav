class ArrayManipulation:
		
   def validate_input(arr,index):
	if len(arr) < 1 :
                raise AttributeError("Array size should be greater than 0")
            if index > len(arr) or index < 0:
                raise IndexError("Index value is out of bounds")
	
   def element_at(arr,index):
        try:
            validate_input(arr,index)
            return arr[index]
        except IndexError as i:
            raise i
        except AttributeError as a:
            raise a

    def inclusive_range(arr,start_pos,end_pos):
        try: 
            validate_input(arr,index)
            return arr[start_pos:end_pos+1]
        except IndexError as i:
            raise i
        except AttributeError as a:
            raise a
    
    def non_inclusive_range(arr,start_pos,end_pos):
        try: 
            validate_input(arr,index)
            return arr[start_pos:end_pos]
        except IndexError as i:
            raise i
        except AttributeError as a:
            raise a
    
    def start_and_length(arr,start_pos,length):
        try: 
            validate_input(arr,index)
            return arr[start_pos:start_pos+length]
        except IndexError as i:
            raise i
        except AttributeError as a:
            raise a
