students = [
  ["Fred", :May],
  ["Sally", :May],
  ["Sam", :May]
]

def student_info(students)
  students.each do |student|
    puts "Student name: #{student[0]}\nClass Month:#{student[1]}"
  end
end

student_info(students)


def provide_mortgage?(salary, deposit, property_value)
  loan_amount = property_value - deposit
  min_deposit = 0.2 # 20%
  max_multiplier = 5 # how many annual incomes can be borrowed
  deposit >= property_value * min_deposit && 
      salary * max_multiplier >= loan_amount
end


salary 30000, deposit 50000, property_value 200000 true
salary 30000, deposit 50000, property_value 200000 true
salary 50000, deposit 40000, property_value 200000 true
salary 80000, deposit 100000, property_value 500000 true
salary 35000, deposit 60000, property_value 300000 false
salary 25000, deposit 30000, property_value 150000 true