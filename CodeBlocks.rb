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

