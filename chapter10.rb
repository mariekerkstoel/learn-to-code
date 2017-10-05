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

def factorial(num)
  if num < 0
    puts "Not possible"
  elsif num <= 1
    1
  else
    num * factorial(num - 1)
  end
end

puts factorial(6)

M = "land"
o = "water"
world =[ [o, o, o, M],
         [o, M, M, M],
         [o, o, M, M],
         [M, M, M, o],
         [o, M, M, M]]
def continent_size(world, x, y)
if world[x][y] != "land"
  return 0
end

size = 1
world[x][y] = "counted land"

size = size + continent_size(world,x-1 ,y-1)
size = size + continent_size(world,x-1 ,y)
size = size + continent_size(world,x-1 ,y+1)
size = size + continent_size(world,x+1 ,y-1)
size = size + continent_size(world,x+1 ,y)
size = size + continent_size(world,x+1 ,y+1)
size = size + continent_size(world,x ,y-1)
size = size + continent_size(world,x ,y+1)

size

end

puts continent_size(world,2,2)



def recursive_sort (unsorted, sorted)
  compared = unsorted.each{|first, second| first <==> second}
  sorted.push(compared)
end

def sort(array)
  recursive_sort(array, [])
end
