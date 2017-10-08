

class Array
  def shuffle(array)
    array.sort_by{rand}
  end
end

=begin
instance variables: An instance of a class is just an object of that class.
To tell instance variables from local variables, they have @ in front of their names
That’s what initialize is for; as soon as an object is created, initialize is automati-
cally called on it.
=end
