katz_deli = []

def line(katz_deli)
  # Given the queue
  # output the line 

  # 2 conditions
  # A: No one in line => 
  # puts "The line is empty."
  
  # B: Some people in line =>
  # EX: "The line is currently: 1. Ada 2. Grace 3. Kent"
  
  if katz_deli.length < 1
    puts "The line is empty."
  else 
    # We know we gonna have to loop or iterate over the array
    output = ["The line is currently:"]
    katz_deli.each_with_index do | person, index |
      # the part that repeats is:
      # Number: Name
      line_str = " #{index + 1}: #{person}."
      output << line_str
    end
    puts output.join("")
  end
end

def take_a_number(katz_deli, name)
  # Name
  # Number in line

  # Push the name into the katz_deli array
  katz_deli.push(name)
  # katz_deli = [] => ["Ada"] => ["Ada", "Grace"]

  # Output
  # Welcome, Ada. You are number 1 in line.
  puts "Welome #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli) 
  # "currently serving {name}"
  # Needs to take person out of the queue (array)
  # First in First out

  # Error handling:
  # what if there's no one in the queue?
  if katz_deli.length > 0
    next_person = katz_deli.shift
  
    # First in Last Out
    # next_person = katz_deli.pop
    puts "Currently serving #{next_person}"
  else
    puts "No one's here...."
  end
    
end

# QUEUE

line(katz_deli)

take_a_number(katz_deli, "Ada")
take_a_number(katz_deli, "Grace")

line(katz_deli)

now_serving(katz_deli)
now_serving(katz_deli)

line(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
now_serving(katz_deli)
