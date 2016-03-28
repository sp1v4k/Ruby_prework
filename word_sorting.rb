require 'pry'

def sort_sentence(sentence)
	sentence_array = sentence.split(' ')
	sentence_array = sentence_array.sort
	sentence_array.to_s
end

puts 'Enter the sentece to be sorted: '
sentence = gets.chomp
print sort_sentence(sentence)

#puts sort_sentence(sentence)