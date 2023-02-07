class Array

    def number_array(array)
        begin
            if array.length() < 1
                raise "Empty array error"
            end
            array.each_with_index {|val,index| array[index]= index.to_s+":"+val.to_s }
            #do |val, index| 
            #    array[index]=index.to_s + ":" + val.to_s
            #end
            return array
        rescue Exception => e
            return e.message
        end

    end

    def skip_sports(array, skip)
        begin 
            if array.length() < 1
                raise "Empty array error"
            end
            if skip < 0 or skip > array.length()
                raise "Skip out of bounds error"
            end
            array = number_array(array)
            return array.slice(2,array.length())
        rescue Exception => e
            return e.message
        end
    end

    

end


sports = ['cricket','TT','Football','Hockey']
obj = Array. new


puts "#{obj.skip_sports(sports,2)}"
