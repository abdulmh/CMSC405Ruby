# In Ruby, you can define a fucntion without first having to define a class.
# You must use the keyboard def tp define a function.
def say_hello
    return 'Hello!'
end

# Observations: Notice the absence of curly braces around the body of the function.
# Notice the absence of the parenthesis following the function. Notice the absence
# of the return type in the function declaration.

puts say_hello

# Every function in Ruby return a value. Even if you don't include an explicit
# return statement in the function, Ruby will return a value, the alue that is
# returned is the last statement processed before the function exits.

def tell_the_truth
    'Truth!'
    'Lie!'
    3.<2
end

puts tell_the_truth

# Functions in Ruby may have parameters. in the function say_hello, 'name' is a parameter.
def say_hello name
    return 'Hello ' + name + '!'
end

# Observations: Notice the absence of parenthesis around the parameter name.
# Notice the absence of the data type with the parameter. 

puts say_hello 'Kim'

# Every function is an object. Every function is an object of the class it returns.
puts say_hello('Kim').class