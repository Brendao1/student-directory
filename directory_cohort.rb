@center = 100
def input_students
    puts "Enter the name of the student".center(@center)
    puts "To finish, just hit return twice".center(@center)
    students = []
    name = gets.chomp
    while !name.empty? do
        puts "Which cohort?"
        cohort = add_cohort
    #if cohort == ""
    #  cohort = "tbc"
    #end
        students << {name: name, cohort: cohort.to_sym}
        if students.count == 1
            puts "Now we have #{students.count} student. Next student"
        else
        puts "Now we have #{students.count} students. Next student"
        end
        # get another name from the user. Still using chomp in this instance
        name = gets.chomp
        # if name is not empty then ask for more info
        #nationality
        
        
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
  students.each_with_index do |student, index|
      puts "#{index+1} #{student[:name]} #{student[:nationality]} #{student[:dob]} (#{student[:cohort]} cohort)".center(@center)
  end
end


def print_by_cohort(students)
    #student hash that we're putting info it, we made a duplicate of it and called it cohort, followed the instructions by sport. 
    #and called the array sorted by cohort. and printed it
    #i asked the user for the month they want to see. 
    puts "Enter what cohort (1 to 12) to group by: ".center(@center)
    cohort = gets.chomp

    puts students_by_cohort = students.group_by {|cohort| cohort}

#group = {}    
#if cohort == 1
#     students.each do |student|
#     name = student[name]
#     cohort = student[cohort]
#    end
#  end

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

