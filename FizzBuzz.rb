require 'pry'

puts "Enter top number: "
top_number = gets.to_i	

#using for loop

#for i in (1..top_number)
#	if i % 3 == 0 && i % 5 == 0
#		print "FizzBuzz "
#	elsif i % 3 == 0
#		print "Fizz "
#	elsif i % 5 == 0
#		print "Buzz "
#	else 
#		print "#{i} "
#	end
#end

#using while loop

#i = 1
#while i !=top_number do
#	if i % 3 == 0 && i % 5 == 0
#		print "FizzBuzz "
#	elsif i % 3 == 0
#		print "Fizz "
#	elsif i % 5 == 0
#		print "Buzz "
#	else 
#		print "#{i} "
#	end 
#i += 1
#end

#using #each loop

#(1..top_number).each do |i|
#	first_char = i.to_s
#	if first_char[0] == "1"
#		print "Bang " 
#	elsif i % 3 == 0 && i % 5 == 0
#		print "FizzBuzz "
#	elsif i % 3 == 0
#		print "Fizz "
#	elsif i % 5 == 0
#		print "Buzz "
#	else 
#		print "#{i} "
#	end
#end 

result = ""
(1..top_number).each do |i|
	first_char = i.to_s
	if first_char[0] == "1"
		result << "Bang "
	elsif i % 3 == 0 && i % 5 == 0
		result << "FizzBuzz"
	elsif i % 3 == 0
		result << "Fizz "
	elsif i % 5 == 0
		result << "Buzz "
	else 
		result << "#{i} "
	end
end 
puts "#{result}"

