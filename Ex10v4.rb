@students = []

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    name = gets.chomp
    while !name.empty? do
        @students << {name: name, cohort: :november}
        puts "Now we have #{@students.count} students"
        name = gets.chomp 
    end
end

def print_header
    puts "The students of Villains Academy"
    puts "---------------"
end

# MOVE THIS DOWN, AFTER INTERACTIVE MENU
def print_student_list
  @students.each_with_index do |student, index|
      puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# MOVE THIS DOWN, AFTER INTEACTIVE MENU
def print_footer
    puts "Overall we have #{@students.count} great students"
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" 
end


def show_students
  print_header
  print_student_list  
  print_footer  #@STUDENTS CAN COME OUT
end


interactive_menu
print_header
print_student_list   # STUDENTS CAN COME OUT
print_footer # STUDENTS CAN COME OUT