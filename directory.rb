def print_header
  print "The students on my cohort at Makers Accademy\n"
  print "-------------------------\n"
end

def print_students(students)
  students.each_with_index() do |student, index|
    print "#{index} #{student[:name]} from the #{student[:cohort]} cohort.\n"
  end
end

def print_letter(students)
  students.each do |student|
    if ["A"].include? student[:name][0]
    print "#{student[:name]} from the #{student[:cohort]} cohort.\n"
    end
  end
end

def print_footer(name)
  print "There are #{name.length} students on the course.\n"
end

def input_students

  print "Please can you enter your first name?\n"
  print "Press return twice when you have entered all the names.\n"

  students = []

  name = gets.chomp

  while !name.empty? do
    students << {:name => name, :cohort => :november}
    print "Now we have #{students.length} students on the course.\n"
    name = gets.chomp
  end
  students
end

students = input_students
print_header
print_students(students)
print_footer(students)
print_letter(students)