puts "What would you like to say to your grandmother?"
while true
grandma_talk = gets.chomp

if grandma_talk == "BYE"
  break
end

if grandma_talk == grandma_talk.upcase
  num = 1930 + rand(20)
  puts "NO, NOT SINCE #{num} !"
else
  puts "HUH?! SPEAK UP SONNY!"
end
end
