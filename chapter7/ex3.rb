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
