#Make note of the syntax [] are arrays {} are hashes

students=[
  {:name => "David Suchet", :cohort => :november},
  {:name => "Meg Ryan", :cohort => :november},
  {:name => "Agatha Christie", :cohort => :november},
  {:name => "Walt Disney", :cohort => :november},
  {:name => "Usain Bolt", :cohort => :november},
  {:name => "Jeremy Kyle", :cohort => :november},
  {:name => "David Hockney", :cohort => :november},
  {:name => "Pat Butcher", :cohort => :november},
  {:name => "Jim Carey", :cohort => :november},
  {:name => "Colin Powell", :cohort => :november},
  {:name => "Kofi Annan", :cohort => :november},
  {:name => "Carole King", :cohort => :november},
  {:name => "Dolly Parton", :cohort => :november}
]

def print_header
  puts "The students on my cohort at Makers Accademy"
  puts "-------------------------"
end

#Again take note of the syntax here, #{variable[hash]}

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "There are #{names.length} students on this cohort."
end

print_header
print(students)
print_footer(students)