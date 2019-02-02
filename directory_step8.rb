@center = 100

def input_students
    puts "Enter the name of the student".center(@center)
    puts "To finish, just hit return twice".center(@center)
    students = []

# Question 10: We've been using the chomp() method to get rid of the last return character. 
   name = gets.rstrip
   
# Question 5: Add more information: hobbies, country of birth, height, etc.

    while !name.empty? do
        puts "What is their country of birth?"
        country = gets.chomp
        puts "What is their hobby?"
        hobby = gets.rstrip
        puts "Which cohort?"
        cohort = add_cohort
        students << {name: name, country: country, hobby: hobby, cohort: cohort.to_sym}
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
      puts "#{index+1} #{student[:name]} #{student[:country]} #{student[:hobby]} (#{student[:cohort]} cohort)".center(@center)
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
      puts "#{student[:name]} #{student[:country]} #{student[:hobby]} (#{student[:cohort]} cohort)".center(@center)
    end
  end
end

# Question 3: print only students whose name is shorter than 12 characters.
def print_12(students)
  students.each_with_index do |student, index|
      if student[:name].length < 12
      puts "#{index} #{student[:name]} #{student[:country]} #{student[:hobby]} (#{student[:cohort]} cohort)".center(@center)
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
    puts "#{students[i][:name]} #{students[i][:country]} #{students[i][:hobby]} (#{students[i][:cohort]} cohort)".center(@center)
    i += 1
  end
  else
      puts "\nNo students to print"
    end
end

# Question 6: using .center() to centre the prompts
# See method being called on the code

# Question 7: In the input_students method the cohort value is hard-coded. 
# How can you ask for both the name and the cohort? If a typo is made, cohort will 
# default to 'tbc'

def add_cohort
    cohort_arr = {1 => :January, 2 => :February, 3 => :March, 4 => :April, 5 => :May, 
    6 => :June, 7 => :July, 8 => :August, 9 => :Septmeber, 10 => :October, 11 => :November, 12 => :December, 13 => :tbc}
    puts "Enter month (1 to 12) of the cohort to join: "
    num = gets.strip.to_i
    if cohort_arr.has_key?num
        cohort = cohort_arr[num]
       else
        puts "\nYou made a typo. Default cohort 'tbc' assigned."
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
      puts "#{index+1} #{student[:name]} #{student[:country]} #{student[:hobby]} (#{student[:cohort]} cohort)".center(@center)
      end
    else 
     puts "\nThere are no students in the directory. ".center(@center)
    end
  end

# Question 8: group by cohort. 
=begin WORKING
def print_by_cohort(students)
  if !students.empty?
      puts "Enter the month to group by (eg 'January'): ".center(@center)
      month = gets.chomp.to_sym
      students.each_with_index {|h,i| puts students[i] if h[:cohort] == month}
    else
       puts "There are no students in the directory. ".center(@center)
    end
    puts "\nPrint by cohort command completed."
end
=end

# Question 8: group by cohort version 2. 
def print_by_cohort2(students)
    if !students.empty?
        cohorts = students.map
        sorted_by_cohort ={}
        puts "\nEnter the month to group by (eg January): ".center(@center)
        month = gets.strip.to_sym
        cohorts.each do |student|
            cohort = student[:cohort]
            name = student[:name]
        if sorted_by_cohort[cohort] == nil
            sorted_by_cohort[cohort] = [name]
        else
            sorted_by_cohort[cohort].push[name]
        end
    end
puts sorted_by_cohort[month]
    puts "\nPrint by cohort command completed."
  else
  end
end


def print_footer(students)
    if students.count == 1
    puts "\nOverall we have #{students.count} great student".center(@center)
    else
    puts "\nOverall we have #{students.count} great students".center(@center)    
    end    
end

print_header
print(students)
#print_12(students)
#print_loop(students)
#print_footer(students)
print_by_cohort2(students)
# print_by_cohort(students)
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
  puts "\nOverall, we have #{students.count} great students"
end


students = input_students
print_header
print(students)
print_footer(students)

end # end of answer to question 11.
