class Hash

    def add(hash,key,value)
        begin
            hash.each_key do |ekey|
                if ekey == key
                    raise "Key already present error"
                end
            end
            #hash[key] = value
            hash.store(key,value)
            return hash
        rescue Exception => e
            return e.message
        end
    end

    def retain_integers(hash)
        begin 
            if hash.length < 1
                raise "Empty hash error"
            end
            #hash.each_key do |key|
            #    if !(key.is_a?Integer)
            #       hash.delete(key)
            #    end 
            #end
            hash.keep_if{|key, value| key.is_a?Integer }
            return hash
        rescue Exception => e
            return e.message
        end
    end

    def delete_even_valued(hash)
        begin 
            if hash.length < 1
                raise "Empty hash error"
            end
            #hash.each_key do |key|
            #    if key.is_a?Numeric
            #       if key.to_i % 2 == 0
            #        hash.delete(key)
            #       end
            #    end 
            #end
            hash.delete_if{|key, value| key.is_a?Integer and key.even?  }
            return hash
        rescue Exception => e
            return e.message
        end
    end

end


hash = {"vibhav"=>"name", 12=>"hello", 1=> "odd",2 => "even"}
obj = Hash. new

puts "#{obj.add(hash,"v","name")}"
puts "#{obj.retain_integers(hash)}"
puts "#{obj.delete_even_valued(hash)}"
