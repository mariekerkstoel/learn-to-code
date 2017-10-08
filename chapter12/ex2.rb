=begin
RANGES --> represent intervals of numbers
=end

=begin
[..] method for strings
if you put in the integers negatively, it starts at the end of the string.
example:
=end
puts "test:"
puts "Marie"[-4..-1]

=begin
puts "What's your name?"
name = gets.chomp
puts "can you give me your date of birth too please?"
birthdate = gets.chomp
list = {}
list[name] = birthdate
puts list
= NOT WHAT THE EX. WAS..
=end
birthdays = {"Marie Kerkstoel" => "20/08/1994",
"Eva Kerkstoel" => "25/10/1996",
"Thomas Kerkstoel" => "3/09/1998"}

puts "whose birthday would you like to know?"
name = gets.chomp
puts birthdays[name]
