class Json

    def open_in_write(filename)
        begin
            if filename == nil
                raise "Empty filename error"
            end
            return File.open(filename, "w")
            rescue Exception => e
                return e.message
        end
    end

    def save_content(content)
        begin
            if content == nil
                raise "Empty content error"
            end
            fp = open_in_write("file.json")

            fp.puts "#{content}" 
            fp.close
            return "done"
            rescue Exception => e
                return e.message
        end
    end

    def change_name(filename)
        begin
            if !(File.exists?(filename))
                raise "File not found error"
            end
            #puts filename
            file_data = File.read(filename)
            #puts file_data
            f = file_data.split('"')[3]
            f = f.split(" ")
            #puts f.length
            new_content = "\"first name\": " + f[0]+"\", \"last name\": \""+f[f.length-1];
            fname = "<vibhav>_<"+ Time.now.getutc.to_s+">"
            file_data['"name": "Nicole Smith",']=new_content
            f=open_in_write(fname)
            f.puts "#{file_data} " 
            f.close
            return "done"
        rescue Exception => e
            return e.message    
        end

    end


end

contents = '{ "name": "Nicole Smith", "age": 25, "salary": 255552.67, }'

obj = Json.new
obj.save_content(contents)
obj.change_name("file.json")