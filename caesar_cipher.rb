require 'pry'
puts 'Enter sentence: '
sentence = gets.chomp
puts 'Enter shift: '
shift = gets.to_i

#my way - hard mode using my custom abc array

#reusing code in both ways
def to_array_of_char(toarray)

	toarray.split(//)

end
#
#def solve_cipher(input_array)
#	abc_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
#	output_array = []
#
#	input_array.each do |i|
#		pos1 = abc_array.index(i)
#		pos2 = pos1 - 3
#		if pos2 < 0
#			pos3 = 26 + pos2
#			output_array << abc_array[pos3]
#		else
#			output_array << abc_array[pos2]
#		end
#	end
#	output_array
#end
#char_array = to_array_of_char(word)
#new_word = solve_cipher(char_array).join
#puts word
#puts new_word

#decrypting: easy way - hints mode

def solve_cipher(input_array,shift)
	output_array = []
	input_array.each do |char|
		pos1 = char.ord
		pos2 = pos1 + shift
		if pos2 < 97
			pos3 = 123 - (97 - pos2) 
			output_array << pos3.chr
		elsif pos2 > 122
			pos3 = 96 + (pos2 - 122) 
			output_array << pos3.chr
		else
			output_array << pos2.chr
		end
	end
	output_array
end

sentence_array = sentence.split(' ')

sentence_array.each do |word|
	char_array = to_array_of_char(word)
	new_word = solve_cipher(char_array,shift).join
	puts new_word
end

