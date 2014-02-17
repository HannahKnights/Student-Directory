
def header
  puts "Please enter a dinner party guest \n(press return twice if you have finished)"
end

def guest_input
  puts "Please enter the first name of your guest?"

  guest = []

  first_name=gets.chomp

  while !first_name.empty? do 
    guest << {:first_name => first_name}

  puts "Please enter the last name of your guest?"

  last_name=gets.chomp


guest << 





guests = [
  {:name => "Milan Kundera", :dietary_rq => :v},
  {:name => "Yukihiro Matsumoto", :dietary_rq => :v},
  {:name => "David Suchet", :dietary_rq => :none},
  {:name => "David Hockney", :dietary_rq => :none},
  {:name => "Kirsty Young", :dietary_rq => :none},
  {:name => "Dolly Parton", :dietary_rq => :gf},
  {:name => "Prince", :dietary_rq => :none}
]

def print_header
  puts "Here is my dinner party guest list"
end

def guest_list(guests)
  guests.each do |guest|
    puts "#{guest[:name]} (#{guest[:dietary_rq]})"
  end
end

def print_footer(names)
  puts "There will be #{names.length} guests at the dinner."
end

print_header

guest_list(guests)

print_footer(guests)