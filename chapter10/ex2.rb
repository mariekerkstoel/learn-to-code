def dictionary_sort(arr)
  return arr if arr.length == 1

  middle = arr.pop
  below = arr.select{|x| x.downcase < middle.downcase}
  above = arr.select{|x| x.downcase >= middle.downcase}

dictionary_sort(below) + middle + dictionary_sort(above)
end

words = ["cat", "dog" , "friends", "plants"]

puts(dictionary_sort(words).join(' '))

# This method doesn't seem to work but compared to the ex in the book, it looks quite the same..
