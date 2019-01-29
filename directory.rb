def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
        # add the student has to the array
        students << {name: name, cohort: :november}
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

# Question 4: Rewrite the each() method that prints all students using 
# while or until control flow methods (Loops).
def print(students)
  i = 0
 for i in 0..students.length-1
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students"
end

print_header
print(students)
print_footer(students)
