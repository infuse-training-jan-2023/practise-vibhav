class Array
   def element_at(arr, index)
    begin
        if arr.length < 1
            raise "Array of insufficient length"
        end
        if index < 0 or index > arr.length-1
            raise "Index out of bound"
        end
        arr[index]
    rescue Exception => e
        return e.message
    end
   end

   def inclusive_range(arr, start_pos, end_pos)
    begin
        if arr.length < 1
            raise "Array of insufficient length"
        end
        if end_pos < start_pos
            raise "End Position is lesser than start"
        end
        if start_pos > arr.length or end_pos > arr.length or start_pos < 0 or end_pos < 0
            raise "Array Indexing out of bound"
        end
        arr.slice(start_pos,end_pos-start_pos)
    rescue Exception => e
        return e.message
    end
   end

   def non_inclusive_range(arr, start_pos, end_pos)
    begin
        if arr.length < 1
            raise "Array of insufficient length"
        end
        if end_pos < start_pos
            raise "End Position is lesser than start"
        end
        if start_pos > arr.length or end_pos > arr.length or start_pos < 0 or end_pos < 0
            raise "Array Indexing out of bound"
        end
        arr.slice(start_pos,(end_pos-start_pos)-1)
    rescue Exception => e
        return e.message
    end
   end

   def start_and_length(arr, start_pos, length)
    begin
        if arr.length < 1
            raise "Array of insufficient length"
        end
        if length < start_pos
            raise "End Position is lesser than start"
        end
        if start_pos > arr.length or length > arr.length or start_pos < 0 or length < 0
            raise "Array Indexing out of bound"
        end
        if length != arr.length
            raise "Incorrect array length error"
        end
        arr.slice(start_pos,length)
    rescue Exception => e
        return e.message
    end
   end

end

arr = [9,5,1,2,3,4,0,-1]
obj = Array. new
puts "#{obj.element_at(arr, 3)}"
