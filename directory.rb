students=[
  ["David Suchet", :november],
  ["Meg Ryan", :november],
  ["Agatha Christie", :november],
  ["Walt Disney", :november],
  ["Usain Bolt", :november],
  ["Jeremy Kyle", :november],
  ["David Hockney", :november],
  ["Pat Butcher", :november],
  ["Jim Carey", :november],
  ["Colin Powell", :november],
  ["Kofi Annan", :november],
  ["Carole King", :november],
  ["Dolly Parton", :november]
]

def print_header
  puts "The students on my cohort at Makers Accademy"
  puts "-------------------------"
end

def print(students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
  end
end

def print_footer(names)
  puts "There are #{names.length} students on this cohort."
end

print_header
print(students)
print_footer(students)