# Code blocks are chunks of code between either curly braces or a do-end.
# {puts 'Hiya there kiddo!'}

#do 
 #   puts 'Hiya there kiddo'
#end

# Naked code blocks will generate a syntax error. Code blocks can't exist on 
# their own. They must be passed to methods or returned by methods.

# This is how you pass a curly braces code block to a method.
3.times {puts 'Hiya there kiddo'}

# This is how you pass a do-end code block to a method.
3.times do
    puts 'Hiya there kiddo'
end

# Curly braces are typically used for single-line code blocks.
# Do-end is used for multi-line code blocks
c = [1,2,3]
2.times do
    puts c.first
    puts c.last
    puts c.length
    puts c.pop
end

# This method is capable of executing a code block. It uses the Ruby yield method.
# The Ruby yield method can be used to execute a code block. 
def call_back
    puts 'Start of block'
    yield
    yield
    puts 'End of block'
end

# Call call_back passing it a code block.
call_back {puts 'In the block'}

# This method uses the yield method that has been provided arguments.
def who_says_what
    yield "Faith", "hello"
    yield "Hafsah", "howdy"
end

# Within the code block sent to the function, you must define parameters
# to receive the arguments and they must be placed within the pipe symbols
# |params, ...|
who_says_what {|name, greeting| puts "#{name} says #{greeting}"}

#  Another way to invoke a code block is to use the call method.
# This method uses the call method to execute a code block.
def call_back &b
    b.call
end

call_back {puts 'Hello there'}

# The call method may be provided arguments too.
# This method uses the call method that has been provided arguments
def call_block_greeting &b
    b.call "Hafsah"
end

call_block_greeting {|name| puts "Hello there #{name}"}

# Code blocks are used throughout Ruby with iterators and collections such as an array.
moreanimals = ['lions and', 'tigers and', 'bears', 'oh my']
moreanimals.each {|a| print a, " "}

puts 
('a'...'e').each {|char| print char}

# There are ither iterator methods in Ruby, like upto
puts
3.upto(6) {|i| print i}

# Code blocks may be returned by functions, but first they must be converted into
# Proc objects. Ruby has a function named lambda that converts a code block into
# a Proc object
def n_times thing
    lambda {|n| thing * n}
end

# Call n_times and store its return in variable
# {|n| 23 * n}
puts 
p1 = n_times 23
puts p1.class

# To execute the code block containd in p1, use the call statement
# The integers 3 and 4 will be substitued an n, then print each sum as a new line
puts p1.call 3
puts p1.call 4

# Call n_times and store its return in a variable, but
# give it a different argument
# {|n| "Hello " * n}
p2 = n_times "Hello "

# To execute the code block contained in p2, use the call statement
puts p2.call 3

# This function contains a do-end code block that will be returned 
# as a Proc object
def day_of_week
    lambda do |today|
        if today.saturday?
            'Do chores around the house.'
        elsif today.sunday?
            'Relax.'
        else
           'Go to school.'
        end        
    end
end

# Call day_of_week and store its return in a variable
d = day_of_week 
puts d.call Time.now