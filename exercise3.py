class SportsArray:


    def skip_sports(arr,skip):
        try:
            if len(arr) < 1 :
                raise AttributeError("Index value is out of bounds")
            if skip > len(arr) or skip < 0:
                raise IndexError("Array size should be greater than 0") 
            arr = [str(i)+":"+ arr[i] for i in range(0,len(arr))]
            return arr[skip:]
        except IndexError as e:
            return e
        except AttributeError as a:
            return a
	
