def input_students
    puts "Enter the name of the student"
    puts "To finish, just hit return twice"
    students = []
# Question 10: Find another method among those provided by the String class that 
# could be used for the same purpose as chomp() 
# (although it will require passing some arguments).
#
# string.rstrip
# string.lstrip
# string.slice[string.string.length-1]
# string.strip!
#
    name = gets.rstrip
    while !name.empty? do
        puts "Cohort?"
        cohort = gets.rstrip
    if cohort == ""
        cohort = "tbc"
    end
        # add the student has to the array
        students << {name: name, cohort: cohort.to_sym}
# Question 9: Right now if we have only one student, the user will see a 
# message "Now we have 1 students", whereas it should be "Now we have 1 student". 
# How can you fix it so that it used singular form when appropriate and plural form otherwise?
        if students.count == 1
            puts "Now we have #{students.count} student. Next student"
        else
        puts "Now we have #{students.count} students. Next student"
        end
        # get another name from the user. Still using chomp in this instance
        name = gets.chomp
    end
    students
end

students = input_students

def print_header
    puts "The students of Villains Academy"
puts "---------------"
end

def print(students)
  students.each_with_index do |student, index|
      # puts "#{index+1} #{student[:name]}  #{student[:nationality]} #{student[:dob]} (#{student[:cohort]} cohort)"
      puts "#{student[:name]}  #{student[:nationality]} #{student[:dob]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students"
end

print_header
print(students)
print_footer(students)
