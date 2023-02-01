class SubArray:


    def subarray_sum(arr,k):
        try:
            if len(arr) < 1 :
                raise AttributeError
            map = {0:1}
            sum = 0 
            cnt = 0 

            for val in arr :
                sum+= val
                remain = sum-k 
                if(remain in map):
                    cnt+=map.get(remain)
                map.update({sum:map.get(sum ,0)+1})
            #result = [i for i in range(len(arr)) if arr[i]+arr[:len(arr)] == k ]
            return cnt #len(result)
        except AttributeError:
            return "Array size should be greater than 0"
	
#obj = SubArray
#print(obj.subarray_sum([3,2,1,3],3))
