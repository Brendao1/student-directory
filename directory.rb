<<<<<<< HEAD
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

# Question 2: print names starting with a specific letter
def print(students)
  students.each do |student|
      # take student[:name]
      # split it into an array
      # find first letter
      # if letter = "A", then print
      if student[:name][0] == "M"
      puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end


def print_footer(students)
    puts "Overall we have #{students.count} great students"
end


print_header
print(students)
print_footer(students)
=======
#first we print the list of students
puts "The students of Villains Academy"
puts "--------------"
puts "Dr. Hannibal Lecter"
puts "Darth Vader"
puts "Nurse Ratched"
puts "Michael Corleone"
puts "Alex DeLarge"
puts "The Wicked Witch of the West"
puts "Terminator"
puts "Freddy Krueger"
puts "The Joker"
puts "Joffrey Baratheon"
# finally, we print the total number of students
puts "Norman Bates"
print "Overall we have "
#it’s important that print() doesn’t add new line characters
print 11
puts " great students"
>>>>>>> e7bd74027bb99e3b82f649ba1c865bcffa29de71
