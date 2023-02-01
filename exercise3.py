class SportsArray:


    def skip_sports(arr,skip):
        try:
            if len(arr) < 1 :
                raise AttributeError
            if skip > len(arr) or skip < 0:
                raise IndexError 
            arr = [str(i)+":"+ arr[i] for i in range(0,len(arr))]
            return arr[skip:]
        except IndexError:
            return "Index value is out of bounds"
        except AttributeError:
            return "Array size should be greater than 0"
	