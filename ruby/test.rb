require 'json'


puts "Enter Your Name"
input = gets
puts "You Entered #{input}"

puts ENV["PROGRAM"]

my_hash = JSON.parse('{"hello": "goodbye"}')
puts my_hash["hello"]

