puts "what is the source file?"
source_file = gets.chomp
source_content = IO.read(source_file)
puts "what is the destination file?"
destination_file = gets.chomp 
IO.write(destination_file, source_content)