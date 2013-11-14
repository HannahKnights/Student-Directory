def print_header
  puts "The students on my cohort at Makers Accademy"
  puts "-------------------------"
end

#Define a new method for entering student first names

def input_students

  puts "Please can you enter your first name?"
  puts "Press return twice when you have entered all the names."

  #create an empty array for student, that you will be creating the data for

  students = []

  name = gets.chomp

  #Start a loop that will continue until return is pressed twiced and
  #the name input is empty.
  #Remember '!' reverses a value.
  #Remember to put '?' after a command which expects a boolean.

  while !name.empty? do
    students << {:name => name, :cohort => :november}
    puts "Now we have #{students.length} students on the course."
    name = gets.chomp
  end
end

print_header
input_students
