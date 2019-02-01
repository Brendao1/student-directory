require 'csv'
@students = []
@loaded_file = ""
@default_file = "students.csv"

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items  
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end   

def process(selection)
    case selection
    when "1"
      input_students   # calling the input students method
    when "2"
      show_students  # calling the show_students method
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again."
    end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
  end
      puts "Input students successful."
end

def add_student(name, cohort)
    @students << {name: name, cohort: :november}
  return @students
end


def show_students
  print_header
  print_student_list
  print_footer
end

def print_header
    puts "The students of Villains Academy"
    puts "---------------"
end

def print_student_list
  @students.each_with_index do |student, index|
      puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
    puts "Overall we have #{@students.count} great students."
end

def save_students 
  puts "Which file are we saving to?"
  filename = STDIN.gets.chomp
  CSV.open(filename, "w") do |csv|
    #CSV.generate do |csv_line|
      @students.each do |student|
       student_data = [student[:name], student[:cohort]]
       csv_line = student_data.join(",")
       csv.puts csv_line
      end
    #end
  end
  puts "Student names saved to #{filename}."
end

def save_students 
  puts "Which file are we saving to?"
  filename = STDIN.gets.chomp
  CSV.open(filename, "w") do |csv|
    CSV.foreach(filename) do |line|
      @students.each do |student|
       student_data = [student[:name], student[:cohort]]
       line = student_data.join(",")
       csv.puts csv_line
      end
    end
  end
  puts "Student names saved to #{filename}."
end


=begin WORKING
 def save_students
  puts "Which file are we saving to?"
  filename = STDIN.gets.chomp
  # CSV.open(filename, "wb") do |file|
  file = File.open(filename, "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  puts "Student names saved to #{filename}."
 # file.close
end
=end

# this method will try to load a default file
=begin
def try_load_students
  filename = ARGV.first
  if filename.nil?
    filename = @default_file
    puts "Loaded default file: #{filename}."
  elsif file.exists?(filename)
    filename = @loaded_file
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
  # load_students(filename)
  # puts "Loaded #{@students.count} from #{filename}"
end
=end


def try_load_students
  filename = ARGV.first 
  return if filename.nil? 
  if File.exists?(filename) 
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit 
  end
end

# changing load_students to use do...end block
def load_students(filename = "students.csv")
  puts  "Which file are we loading?"
  filename = STDIN.gets.chomp
  CSV.foreach(filename) do |line|
  # file.readlines.each do |line|
  name, cohort = line
  # name, cohort = line.chomp.split(',')
    add_student(name, cohort)
  # end
end
    puts "#{@students.count} students from #{filename} have been loaded. Select 2 to view. " 
  # file.close
end

# This quine prints the whole thing out: 
# def s;"def s;;end;puts s()[0,6]+34.chr+s+34.chr+s()[6,s.length-6]";end;puts s()[0,6]+34.chr+s+34.chr+s()[6,s.length-6]


# $><<IO.read($0)

# Here is a quine. 
# It outputs the script I am running it from, namely irb
eval s=%q(puts"eval s=%q(#{$0})")

try_load_students
interactive_menu