array_1 = [[1,3], ["Marie","Thomas"]]
puts array_1


puts "Give me some words"
words = []
while true
  word = gets.chomp
  words.push(word)
  if word == ''
    break
  end
end

puts "you want your worsd sorted? here they are: "
puts words.sort


def ask_question(question)
  while true
  puts question
  reply = gets.chomp
  if reply.downcase == "yes" || reply.downcase == "no"
    if reply.downcase == "yes"
      answer = true
    else reply.downcase == "no"
      answer = false
    end
  break
  else puts "Please answer the question"
  end
end
return answer
end

ask_question("Will you go out with me?")
ask_question("Do you like hummus?")
wet_bed = ask_question("Do you wet the bed once in a while? ")
puts wet_bed
