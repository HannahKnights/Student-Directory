def print_header
  print "The students on my cohort at Makers Accademy are:\n"
  print "-------------------------\n\n"
end


def print_students(students)
  students.each do |student|
    print "#{student[:name]} is from the #{student[:cohort]}chort.\n"
  end
end


def print_students_index(students)
  students.each_with_index() do |student, index|
    print "#{index + 1} #{student[:name]} from the #{student[:cohort]} cohort.\n"
  end
end


def print_students_loop(students)
  count = students.count
  student_array = []
  while count > 0
    student = students[count - 1]
    student_array << student
    count = count - 1
  end
  student_array = student_array.reverse
  student_array.each do |x|
    print "Student name: #{x[:first_name]} #{x[:last_name]} \n"
  end
end

def print_student_filter_letter(students)
  students.each do |student|
    if ["A"].include? student[:name][0]
    print "#{student[:name]} from the #{student[:cohort]} cohort.\n"
    end
  end
end


def print_student_filter_length(students)
  students.each do |student|
    if student[:name].length < 12
      print "#{student[:name]} from the #{student[:cohort]} cohort.\n"
    else
      print "I was a long name and now I have disappeared\n"
    end
  end
end


def print_footer(name)
  print "There are #{name.length} students on the course.\n"
end

def get_first_name
  print "Please can you enter your first name?\n"
  gets.chomp
end

def get_last_name
  print "Please can you enter your last name?\n"
  last_name = gets.chomp
end

def get_language_pref
  print "What is your favourite programing language?"
  gets.chomp
  2
end

def input_students
  
  students = []

  print "Press return twice when you don't have any more data to enter.\n"

  first_name = get_first_name

  last_name = get_last_name

  language = get_language_pref

  until language.empty? do

    students << {:first_name => first_name, :last_name => last_name, :language => language_pref, :cohort => :november}
    
    print "Now we have #{students.length} students on the course.\n"
    
    first_name = get_first_name
    
    last_name = get_last_name

  language = get_language_pref
  
  end
 
  students

end


students = input_students
print_header
#print_students(students)
#print_students_index(students)
print_students_loop(students)
#print_student_filter_letter(students)
#print_student_filter_length(students)
print_footer(students)