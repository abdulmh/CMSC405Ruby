# Ruby provides a whoel set of I/O related methods in the Kernel module.
# A Ruby module is like a Java interface.

# The method prints each parameter its passed to standard out (stdout).
# It does not append a new line to the end of its output.
print "cat", [1,2,3], 99, "\n"
print "cat", [1,2,3], 99, "\n"

# Observations: The arguments does not need to be enclosed in parenthesis.
# Delimiters like the semi-colon, were'nt needed at the end of the lines of code

print "Enter your first name: "

# The gets method returns the next line of input from standard in (stdin)
# including the new line that's generated when the user hits the Enter key.
# The chomp method removes the new line at the end of the input.
fname = gets.chomp

# Observation: Don't have to specify types. Empty parens aren't required.

# The puts method is like the print method, but it appends a new line to its output.
# To reference a variable value within a String, you must use String interpolation
# syntax and you must use double quotes with the String.
puts "Your first name is #{fname}"

print "Enter your last name: "

lname = gets.chomp

puts "Your last name is #{lname}"

puts "Your full name is #{fname} #{lname}"

# The print method is like the puts method, but it allows you to format the 
# output by using formart specifiers.
printf "Your full name is %s %s\n", fname ,lname
printf "My age is %d, and my weight is %.2f\n", 24, 120.3

# The puts method prints first character of the parameter its passed.
# It does not append a new line to the end of its output
print "Your initials are "
putc fname
putc lname

