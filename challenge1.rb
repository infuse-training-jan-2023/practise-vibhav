class Challenge

	def serial_average(input)
		begin
			regrex = /\d\d\d-\d\d.\d\d-\d\d.\d\d/
			if input !~ regrex
				raise "Input is not in proper format"
			end
			substr = input.split(/[-.]/)
			output = "#{substr[0]}-#{'%.2f' % [((substr[1].to_f+substr[3].to_f+substr[2].to_f+substr[4].to_f)/2)]}"
			return output
		rescue Exception => e
			return e.message
		end
	end
end

obj = Challenge. new
obj.serial_average("002-10.00-20.00")

