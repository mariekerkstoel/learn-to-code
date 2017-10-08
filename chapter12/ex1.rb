

puts "What year were you born in? "
year = gets.chomp
puts "month?"
month = gets.chomp
puts "the day? "
day = gets.chomp
time = Time.local(year.to_i,month.to_i,day.to_i)

puts time
puts time2 = Time.new
number = time2 - time
counting_years = (number/60/60/24/7/52).floor
puts "you are #{counting_years} years old"
puts "Spank" * counting_years
