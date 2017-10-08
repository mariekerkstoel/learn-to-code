def shuffle(toshuffle)
  toshuffle.sort_by{rand}
end


words = ["cat", "dog" , "friends", "plants"]
puts shuffle(words)
