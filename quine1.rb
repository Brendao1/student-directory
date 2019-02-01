# A quine is a computer program which takes no input and produces a copy of its own source code as its only output.

# def s;"def s;;end;puts s()[0,6]+34.chr+s+34.chr+s()[6,s.length-6]";end;puts s()[0,6]+34.chr+s+34.chr+s()[6,s.length-6]


# The normal trick is to use printf 
# such that the format-string represents the structure of the program, 
# with a place-holder for the string itself to get the recursion you need:


# Write a short program that reads its own source code (search StackOverflow to find out how to get the name of the currently executed file) 
# and prints it on the screen.

# Here is the actual program:
# 
# def greet(name)
#    puts "Hello, #{name}!"
# end
# 
# greet("Brenda")


# The principle of A very basic quine:
# def quine  << DO WE PUT IN DEF?
# print "[insert this program's source here]"
## but this is naive. Someone made a solution with putchar

# puts = "Hello"
# puts "[\"Hello\"]"

# src = puts "Hello"
# puts src

puts "[def greet(name);puts \"Hello, \#{name}!\";end;greet(\"Brenda\")]"




