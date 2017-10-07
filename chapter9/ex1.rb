def ask_recursively(question)
  puts question
  reply = gets.chomp
  if reply.downcase == "yes"
    true
  elsif reply.downcase == "no"
    false
  else
    puts "Please answer the question with yes or no"
    ask_recursively(question)
  end
end

ask_recursively("Are you a girl")
ask_recursively("Do you like hummus")
ask_recursively("Do you drink a lot of vodka?")
