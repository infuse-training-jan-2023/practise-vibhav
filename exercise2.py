class ArrayManipulation:
	

    def element_at(arr,index):
        try:
            if len(arr) < 1 :
                raise AttributeError
            if index > len(arr) or index < 0:
                raise IndexError 
            
            return arr[index]
        except IndexError:
            return "Index value is out of bounds"
        except AttributeError:
            return "Array size should be greater than 0"

    def inclusive_range(arr,start_pos,end_pos):
        try: 
            if len(arr) < 1 :
                raise AttributeError
            if start_pos < 0 or start_pos > len(arr) or end_pos<0 or end_pos > len(arr):
                raise IndexError
            
            return arr[start_pos:end_pos+1]
        except IndexError:
           return "Position value out of bound"
        except AttributeError:
            return "Array size should be greater than 0"
    
    def non_inclusive_range(arr,start_pos,end_pos):
        try: 
            if len(arr) < 1 :
                raise AttributeError
            if start_pos < 0 or start_pos > len(arr) or end_pos<0 or end_pos > len(arr):
                raise IndexError
            
            return arr[start_pos:end_pos]
        except IndexError:
           return "Position value out of bound"
        except AttributeError:
            return "Array size should be greater than 0"
    
    def start_and_length(arr,start_pos,length):
        try: 
            if len(arr) < 1 :
                raise AttributeError
            if start_pos < 0 or start_pos > len(arr) or length<0 or length > len(arr):
                raise IndexError
            
            return arr[start_pos:start_pos+length]
        except IndexError:
           return "Position value out of bound"
        except AttributeError:
            return "Array size should be greater than 0"
      

	