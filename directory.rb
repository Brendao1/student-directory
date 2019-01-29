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
        puts "Enter another student"
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

# Question 5: Printing the additional info
def print(students)
  students.each do |student|
      puts "#{student[:name]}  #{student[:nationality]} #{student[:dob]} (#{student[:cohort]} cohort)"
  end
 end

def print_footer(students)
    puts "Overall we have #{students.count} great students"
end

print_header
print(students)
print_footer(students)
