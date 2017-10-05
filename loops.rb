while true
puts "What would you like for me to do?"
request = gets.chomp
puts "My response: "
puts "I will do #{request}!"
puts "But so will Eva"
puts "And so will Thomas"
if request == "stop"
break
end
end

input = 0
while input < 99
  puts "#{input} bottles of beer on the wall"
  input += 1
end

puts "What would you like to say to your grandmother?"
grandma_talk = gets.chomp
if grandma_talk == grandma_talk.upcase
  puts "NO, NOT SINCE 1938!"
else
  puts "HUH?! SPEAK UP SONNY!"
end

puts "Give me a starting year!"
starting_year = gets.chomp
starting_year = starting_year.to_i
puts "give me the ending year"
ending_year = gets.chomp
ending_year = ending_year.to_i
while starting_year != ending_year
  starting_year += 1
  if starting_year % 4 == 0 || starting_year % 400 == 0
    puts starting_year.to_s
  end
end
