@students =[]

def print_interactive_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the student list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer(@students)
end


def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I'm not sure what you meant, please try again."
  end
end

def load_students(filename = "students.csv") 
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    @students << {:first_name => name, :cohort => cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists? (filename)
    load_students (filename)
    puts "Loaded #{@students.length} from #{filename}"
  else
    puts "Sorry, we are unable to find #{filename}"
    exit
  end
end


def interactive_menu
  loop do 
    print_interactive_menu
    process(STDIN.gets.chomp)
  end
end

def print_header
  print "The students on my cohort at Makers Accademy are:\n"
  print "-------------------------\n\n"
end


def print_student_list
  @students.each do |student|
    puts "#{student[:first_name]} #{student[:last_name]} is from the #{student[:cohort]} cohort."
  end
end


def print_footer(name)
  print "There are #{name.length} students on the course.\n"
end

def get_first_name
  print "Please can you enter your first name?\n"
  STDIN.gets.chomp
end

def get_last_name
  print "Please can you enter your last name?\n"
  STDIN.gets.chomp
end


def input_students
  print "Press return twice when you don't have any more data to enter.\n"
  first_name = get_first_name
  last_name = get_last_name
  until last_name.empty? do
    @students << {:first_name => first_name, :last_name => last_name, :cohort => :november}
    print "Now we have #{@students.length} students on the course.\n"
    first_name = get_first_name
    last_name = get_last_name
  end
  @students
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:first_name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end




print_header
try_load_students
interactive_menu
print_footer(students)