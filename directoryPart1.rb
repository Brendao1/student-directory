@center = 100

def input_students
    puts "Enter the name of the student".center(@center)
    puts "To finish, just hit return twice".center(@center)
    students = []
    
    name = gets.rstrip
    while !name.empty? do
        puts "What is their nationality"
        nationality = gets.chomp
        puts "Which cohort?"
        cohort = add_cohort
        students << {name: name, nationality: nationality, cohort: cohort.to_sym}
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

def print(students)
    if !students.empty?
      students.each_with_index do |student, index|
      puts "#{index+1} #{student[:name]} #{student[:nationality]} #{student[:dob]} (#{student[:cohort]} cohort)".center(@center)
    #else 
     # puts "There are no students in the directory. ".center(@center)
    end
  end
end

def print_by_cohort(students)
  if !students.empty?
      puts "Enter the month to group by: ".center(@center)
      month = gets.chomp.capitalize.to_sym
      students.each_with_index {|h,i| puts students[i] if h[:cohort] == month}
    else
       puts "There are no students in the directory. ".center(@center)
    end
end



def print_by_cohort(students)
      puts "Enter the month to group by: ".center(@center)
      month = gets.chomp.capitalize.to_sym
      students.each_with_index {|h,i| puts students[i] if h[:cohort] == month}
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
print_footer(students)
print_by_cohort(students)

