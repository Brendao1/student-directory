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

# Question 6: Research how the method center() of the String class works. 
# Use it in your code to make the output beautifully aligned.
def print(students)
  students.each_with_index do |student, index|
      puts "#{index+1} #{student[:name]}  "+ "#{student[:nationality]}".ljust(15) + " #{student[:dob]}".ljust(15) + "(#{student[:cohort]} cohort)".rjust(10)
  end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students"
end

print_header
print(students)
print_footer(students)
