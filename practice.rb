#Counting islands
=begin
M = "land"
o = "water"

world = [[o, o, o, M],
         [M, M, M, M],
         [o, o, M, o],
         [M, M, M, o],
         [o, o, o, o]]
def count_island(world, x, y)

  if world[x][y] != "land"
    0
  end

world[x][y] = "counted land"
count = 1
if world[x][y] == "land"
  count += 1
end
count = count + count_island(world, x+1, y)
count = count + count_island(world, x-1, y)
count = count + count_island(world, x-1, y+1)
count = count + count_island(world, x-1, y-1)
count = count + count_island(world, x, y+1)
count = count + count_island(world, x, y-1)
count = count + count_island(world, x+1, y+1)
count = count + count_island(world, x+1, y-1)

puts count

end
count_island(world,2,2)


def sort(array)
middle = array.pop
more = array.select{|x| x.downcase > middle.downcase}
less = array.select{|x| x.downcase < middle.downcase}

sort(less) + middle + sort(more)

return(sort(less) + middle + sort(more)).join
end

words = ["ape", "monkey"]
sort(words)

=end

def english_number number

    if number == 0
      "zero"
    end

    if number < 0
      "No negative number please"
    end

    num_string = ''
    ones_place = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen',
                 'fourteen', 'fifteen', 'sixteen',
                 'seventeen', 'eighteen', 'nineteen']

    left = number
    write = left/ 1000
    left = left - (write*1000)
    if write > 0
      thousands = english_number(write)
      numstring = numstring + thousands + 'thousand'
        if left > 0
          numstring = numstring + ' '
        end
    end

    write = left/100
    left = left - (write * 100)

    if write > 0
      hundreds = english_number(write)
      numstring = numstring + hundreds + "hundred"
      if left > 0
        numstring = numstring + ' '
      end
    end

    write = left/10
    left = left - write*10

    if write > 0
      if (write == 1) && (left > 0)
        numstring = numstring + teenagers[left-1]
        left = 0
      else
        numstring = numstring + tens_place[write-1]
      end

      if left > 0
        numstring = numstring + '-'
      end
    end
    write = left
    left = O

    if write > 0
      numstring = numstring + one_place[write - 1]
    end

    numstring
  end

  puts english_number(56)

=begin
uitleg_chapter_11 =
"Saving a simple string in a file and then reading it:
 simple_string = Hello whats up with you
 filename = File.txt
 File.open filename do 'w' |f|
   f.write simple_string
 end
 TO READ IT:
 read_string = File.read filename
 if after that we look at:

read_string = simple_string --> true"


"YAML : is a format for representing objects as strings
if you want to use YAML: you have to import it into your program like this:
  require 'yaml'
Let's say
test_array = ['he','durp','road']
test_string = test_array.to_yaml
after that:
filename = File.txt
File.open filename 'w' do |f|
  f.write test_string
end
read_string = File.read filename
puts read_string == test_string : output will be true!

if we put : read_array = YAML::load read_string
puts read_array == test_array : output will be true too!
"
=end




def english_number number
if number < 0
return 'Please enter a number that isn\'t negative.'
end
if number == 0
return 'zero'
end

num_string = ''
ones_place = ['one', 'two', 'three',
              'four', 'five', 'six',
              'seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty',
              'forty', 'fifty', 'sixty',
              'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen',
            'fourteen', 'fifteen', 'sixteen',
            'seventeen', 'eighteen', 'nineteen']

left = number
write = left/1000
left = left - write*1000
if write > 0
thousands = english_number(write)
num_string = num_string + thousands + 'thousand'
if left > 0
num_string = num_string + ' '
end
end


write = left/100
left = left - write*100
if write > 0

hundreds = english_number write
num_string = num_string + hundreds + ' hundred'
if left > 0

num_string = num_string + ' '
end
end
write = left/10
left = left - write*10
if write > 0
  if ((write == 1) and (left > 0))
    num_string = num_string + teenagers[left-1]
    left = 0
  else
    num_string = num_string + tens_place[write-1]

end
if left > 0

num_string = num_string + '-'
end
end
write = left
left = 0
if write > 0
num_string = num_string + ones_place[write-1]

end
num_string
end
puts english_number(3211)
