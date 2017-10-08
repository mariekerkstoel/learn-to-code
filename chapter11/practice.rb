=begin writing files
File.open ... 'w' do |f|
f.write
write
end
=end

=begin reading files
file.read
=end

"Using YAML --> represents objects as strings
to use it: you have to import it into the program like:
require : \'YAML\'"

require 'YAML'
puts "test":
test_array = ['Give Quiche A Chance',
'Mutants Out!',
'Chameleonic Life-Forms, No Thanks']

test_string = test_array.to_yaml

filename = 'testing.txt'

File.open filename 'w' do |f|
  f.write test_string
end
read_string = File.read filename
read_array = YAML::load read_string
puts(read_string == test_string)
puts(read_array == test_array)


def yaml_save (object,filename)
  File.open filename 'w' do |f|
    f.write(object.to_yaml)
    end
end

def yaml_load(filename)
  yaml_string = File.read(filename)

  YAML::load yaml_string
end


pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = if pic_number < 10
"#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg"
end





File.rename name, new_name
pic_number = pic_number + 1
end
