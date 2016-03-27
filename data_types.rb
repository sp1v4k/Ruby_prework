#strings

#unescaped_string = 'This is Sharon's unescaped string'
#escaped_string = 'This is Sharon\'s escaped string'
#puts "#{escaped_string}"
#puts "#{unescaped_string}"

#methods & strings

#puts "Enter a name to be capitalized:"
#name = gets.chomp
#name_capitalized = name.capitalize
#puts "Out put from capitalize method: #{name_capitalized}"

#flavours = 'chocolate, mint, strawberry, vanilla, caramel, chilly'
#flavours_array = flavours.split(', ')
#puts "#{flavours}"
#puts "#{flavours_array}"
#flavours_length = flavours.length
#puts "#{flavours_length}"

#puts "Enter character to look for: "
#character = gets.chomp
#flavours.include? 'character'

#Integers

#big_number = 618_997
#3.times {puts "#{big_number}"}
#temp_var1 = big_number.odd?
#temp_var2 = big_number.even?
#puts "#{temp_var1}"
#puts "#{temp_var2}"

#Arrays

#animals = ['cat', 'dog', 'tiger', 'bear']
#puts animals [2]

#Array methods

#method  << or push

#my_array = []
#my_array.push animals[1]
#my_array <<  animals[3]
#puts my_array

#animals = animals.sort
#puts animals
#animals = animals.join
#puts animals

#Hashes

my_hash = {}

my_hash["AST"]="Asturias"
my_hash["GAL"]="Galicia"
puts my_hash

#Methods for hashes

# .has_key? .has_value? .select method

check_key = my_hash.has_key?("CAT")
check_value = my_hash.has_value?("Galicia")
puts check_key
puts check_value

my_hash.select{ |key, value| key.include?("A") } => {"AST" => "Asturias"}









