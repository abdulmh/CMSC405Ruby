# Ruby is a pure object-oriented language. Even arrays and functions are objects.
# The number 4 in an object. 
# The class method is a Ruby method that may be called on any object and it
# reutrn the class of the object
puts 4.class

# The methods method retuns the methods that may be called on an object.
# The inspect method allows us to see the methods ina more readable form.
puts 4.methods.inspect

# Mathematical and comparison operatiors are treated like methods in Ruby.
# Each of these statememts illustrates a method being called.
# The thing before the period is referred to as the reciever.
# The thid after the period is is rth name of te method being called.
puts 4.+4
puts 4.-2
puts 4.<=3

# Mathematical and comparison operations may be preformed ina more traditional manner
puts 4 + 4
puts 2 - 2
puts 4 <= 3

# Method names may have a quesiton mark at the end. They're answering a question.
# They return true or false.
puts 4.even?

# Write the lines of code that tell us the class of "Jin Joint" and the methods
# available to it

puts "Jin Joint".class
puts "Jin Joint".methods.inspect
puts "Jin Joint".length
puts "Jin Joint".index("o")

# Method names may have an exclamation mark at the end. Methods that modify the state
# of an object on which they're called have the exclamation mark at the end. There is
# always a second version of these methods that don't have an exclamation mark. They
# don't modify the state of the object. They make a copy of the object and then modify
# the copy.

str = "Jin Joint"
upStr = str.upcase
puts upStr
puts str

mixStr = str.upcase!
puts mixStr
puts str

# Write the lines of code that tell us the class of 5.2 and the methods available to it.
puts 5.2.class
puts 5.2.methods.inspect
puts 5.2.<=4.3
puts 5.2.round