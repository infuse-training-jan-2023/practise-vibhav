require "base64"
class Encode
    def extract(file)
        begin
            if !File.exists?(file) == true
                raise "File not found error"
            end
            file_data = File.read(file)
            extracted = file_data[/the string that will be base encoded/]
            encoded   = Base64.encode64(extracted)
            fname = "<vibhav>.txt"
            File.open(fname, "w") do |f| 
                f.write "extracted : "+"#{extracted} "
                f.write "\nencoded : "+"#{encoded} "
            end
            return "done"
        rescue Exception => e
          return  e.message    
        end

    end
end

obj = Encode. new
obj.extract("fil1e.txt")

