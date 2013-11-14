puts "The students on my cohort at Makers Academy"
puts "---------------"

student=[
"David Suchet",
"Meg Ryan",
"Agatha Christie",
"Walt Disney",
"Usain Bolt",
"Jeremy Kyle",
"David Hockney",
"Pat Butcher",
"Jim Carey",
"Colin Powell",
"Kofi Annan",
"Carole King",
"Dolly Parton",
]

student.each do |student|
  puts student
end
#I should be able to write a ruby code to 'count' the number of student enteries and the print the result in the sentence
puts "There are #{student.length} students." 