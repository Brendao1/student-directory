# Question 7: Asking for both the name and the cohort? What if one of the values is empty? 
# Can you supply a default value? The input will be given to you as a string? 
# How will you convert it to a symbol? What if the user makes a typo?
def input_students
    puts "Enter the name of the student"
    puts "To finish, just hit return twice"
    students = []
    name = gets.chomp
    while !name.empty? do
        puts "Cohort?"
        cohort = gets.chomp
    if cohort == ""
        cohort = "tbc"
    end
        # add the student has to the array
        students << {name: name, cohort: cohort.to_sym}
        puts "Now we have #{students.count} students. Next student"
        # get another name from the user
        name = gets.chomp
    end
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
