puts "Give me some words"
words = []
while true
  word = gets.chomp
  words.push(word.downcase)
  if word == ''
    break
  end
end

puts "you want your words sorted? here they are: "
puts words.sort
