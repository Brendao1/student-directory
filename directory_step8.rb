@center = 100

def input_students
    puts "Enter the name of the student".center(@center)
    puts "To finish, just hit return twice".center(@center)
    students = []

# Question 10: We've been using the chomp() method to get rid of the last return character. 
   name = gets.rstrip
   
# Question 5: Add more information: hobbies, country of birth, height, etc.

    while !name.empty? do
        puts "What is their nationality"
        nationality = gets.chomp
        puts "Which cohort?"
        cohort = add_cohort
        students << {name: name, nationality: nationality, cohort: cohort.to_sym}
        if students.count == 1
            puts "Now we have #{students.count} student. Next student".center(@center)
        else
            puts "Now we have #{students.count} students. Next student".center(@center)
        end
        # get another name from the user.
        name = gets.rstrip
    end
    students
end

# Question 1: Print with index 
def print(students)
  students.each_with_index do |student, index|
      puts "#{index+1} #{student[:name]} #{student[:nationality]} #{student[:dob]} (#{student[:cohort]} cohort)".center(@center)
  end
end


# Question 2: print names starting with a specific letter
def print_specific_letter(students)
  students.each do |student|
      # take student[:name]
      # split it into an array
      # find first letter
      # if letter = "A", then print
      if student[:name][0] == "X"
      puts "#{student[:name]} (#{student[:cohort]} cohort)".center(@center)
    end
  end
end

# Question 3: print only students whose name is shorter than 12 characters.
def print_12(students)
  students.each_with_index do |student, index|
      if student[:name].length < 12
      puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)".center(@center)
      else
     end
  end
end

# Question 4: Rewrite the each() method that prints all students using 
# while or until control flow methods (Loops).
def print_loop(students)
  i = 0
 if !students.empty?
     while i < students.length do
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort)".center(@center)
    i += 1
  end
  else
      puts "No students to print"
    end
end

# Question 6: using .center() to centre the prompts
# See method being called on the code

# Question 7: In the input_students method the cohort value is hard-coded. 
# How can you ask for both the name and the cohort?
def add_cohort
    cohort_arr = {1 => :January, 2 => :February, 3 => :March, 4 => :April, 5 => :May, 
    6 => :June, 7 => :July, 8 => :August, 9 => :Septmeber, 10 => :October, 11 => :November, 12 => :December, 13 => :tbc}
    puts "Enter month (1 to 12) of the cohort to join: "
    num = gets.strip.to_i
    if cohort_arr.has_key?num
        cohort = cohort_arr[num]
       else
        cohort = cohort_arr[13]
    end
    cohort
end

students = input_students

def print_header
    puts "The students of Villains Academy".center(@center)
    puts "---------------".center(@center)
end

# Question 12: printing only if the string is not empty
def print(students)
    if !students.empty?
      students.each_with_index do |student, index|
      puts "#{index+1} #{student[:name]} #{student[:nationality]} #{student[:dob]} (#{student[:cohort]} cohort)".center(@center)
      end
    else 
     puts "There are no students in the directory. ".center(@center)
    end
  end

# Question 8: group by cohort
def print_by_cohort(students)
  if !students.empty?
      puts "Enter the month to group by (eg 'January'): ".center(@center)
      month = gets.chomp.capitalize.to_sym
      students.each_with_index {|h,i| puts students[i] if h[:cohort] == month}
    else
       puts "There are no students in the directory. ".center(@center)
    end
end

def print_footer(students)
    if students.count == 1
    puts "Overall we have #{students.count} great student".center(@center)
    else
    puts "Overall we have #{students.count} great students".center(@center)    
    end    
end

print_header
print(students)
print_12(students)
print_loop(students)
print_footer(students)
print_by_cohort(students)
print_specific_letter(students)


# Question 11: Correcting Typos in Ruby Code

def question_11
    
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
  students << {name: name, cohort: :november}
  puts "Now we have #{students.count} students"
  # get another name from the user
  name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end


students = input_students
print_header
print(students)
print_footer(students)

end # end of answer to question 11.
