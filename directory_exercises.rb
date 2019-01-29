def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    students = []
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
    puts "Student's nationality"
    nationality = gets.chomp
    puts "Student's date of birth"
    dob = gets.chomp
    
# Question 5: Adding more info
        students << {name: name, cohort: :november, dob: dob, nationality: nationality}
        puts "Now we have #{students.count} students"
        # get another name from the user
        name = gets.chomp
    end
    # return the array of students
    students
end

students = input_students

def print_header
    puts "The students of Villains Academy"
puts "---------------"
end

# Question 1: print names with index
=begin
def print(students)
  students.each_with_index do |student, index|
      puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end
=end

# Question 2: print names starting with a specific letter
=begin
def print(students)
  students.each do |student|
      # take student[:name]
      # split it into an array
      # find first letter
      # if letter = "A", then print
      if student[:name][0] == "X"
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end
=end


# Question 3: print only students whose name is shorter than 12 characters.
=begin
def print(students)
  students.each_with_index do |student, index|
      if student[:name].length < 12 
      puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
      else
     end
  end
end
=end

# Question 4: Rewrite the each() method that prints all students using 
# while or until control flow methods (Loops).
=begin
def print(students)
  students.each_with_index do |student|
      while students[index] <= students.length-1
      puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
     end
  end
end
=end

# Question 5: Printint the additional info
#def print(students)
#  students.each do |student|
#      puts "#{student[:name]}  #{student[:nationality]} #{student[:dob]} (#{student[:cohort]} cohort)"
#  end
# end


def print_footer(students)
    puts "Overall we have #{students.count} great students"
end


print_header
print(students)
print_footer(students)