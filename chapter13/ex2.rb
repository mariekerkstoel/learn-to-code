class Orangetree


  def initialize
    @age_tree = 0
    @oranges = 0
    @height = 1
  end

  def height
    @height
  end

  def one_year_passes
    @age_tree += 1
    @oranges = 0
    @height += 1
  end


  def produce_fruit
      if @age_tree <= 10 && @age_tree > 0
        @oranges += 1
      elsif @age_tree > 10 && @age_tree < 30
        @oranges += 2
      elsif @age_tree > 30 && @age_tree <= 40
        @oranges += 1
      end
    end
  end


  def pick_oranges
    @oranges -= 1
    if @oranges > 0
    puts "That orange was delicious"
    elsif @oranges == 0
    puts  "no more oranges"
  end

def count_oranges
  @oranges
end
end

#solution in the book:

=begin class OrangeTree
def initialize
@height = 0
@orange_count = 0
@alive = true
end
def height
if @alive
@height
else
'A dead tree is not very tall. :('
end
end
def count_the_oranges
if @alive
@orange_count
else
'A dead tree has no oranges. :('
end
end
def one_year_passes
if @alive
@height = @height + 0.4
@orange_count = 0
if @height > 10 && rand(2) > 0
# tree dies
@alive = false
'Oh, no! The tree is too old, and has died. :('
elsif @height > 2
# new oranges grow
@orange_count = (@height * 15 - 25).to_i
"This year your tree grew to #{@height}m tall," +
" and produced #{@orange_count} oranges."
else
"This year your tree grew to #{@height}m tall," +
" but is still too young to bear fruit."
end
else
160 • Appendix 1. Possible Solutions

Prepared exclusively for Nikesh Ashar report erratum • discuss

'A year later, the tree is still dead. :('
end
end
def pick_an_orange
if @alive
if @orange_count > 0
@orange_count = @orange_count - 1
'You pick a juicy, delicious orange!'
else
'You search every branch, but find no oranges.'
end
else
'A dead tree has nothing to pick. :('
end
end
end
ot = OrangeTree.new
23.times do
ot.one_year_passes
end
=end
