puts "Hello, what\'s your first name?"
firstname = gets.chomp
puts "And now your middle name !"
middlename = gets.chomp
puts "Just one last thing: your last name."
lastname = gets.chomp
puts "So your full name is #{firstname} #{middlename} #{lastname}?"

puts "What is your favorite number?"
number = gets.chomp
new_number = number.to_i + 1
puts "Might I suggest #{new_number} as your new favorite number?"
