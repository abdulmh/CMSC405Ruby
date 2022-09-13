# Ruby supports the while, until, do-while, and for loops.
# Loops may be in one-line and block form.
#Block Form WHile Loop
x = 0
while x.<10
    x = x.+1
    print x
end

# Observations: The key-word end is used to tell Ruby where the code block ends.
# Notice the absence of curly brackets aroudn the code block.
# #Notice the absence of parenthesis around the condition.

# One-line Form While Loop
puts
x = 0
print x = x.+(1) while x.<10

# The until loop repeats as long as its condition is false.
# One-line form Until Loop
puts
print x = x.-(2) until x.==2

# Block Form Until Loop
puts 
x = 10
until x.==2
    x = x.-2
    print x
end

# Block Form Do-While Loop
puts
x = 0
loop do 
    x = x.+1
    print x
    break if x.>=10
end

# The for loop repeats a specified number of times.
# The ... syntax creates an exclusive range starting at 0 and going up to, 
# but not including 3.
puts
for i in 0...3 do
    print "#{i}. Ho! "
end

# The .. syntax creates an inclusive range starting at 0 and going up to, 
# and including 3.
puts
for i in 0..3 do
    print "#{i}. Ho! "
end

# For loops are used sparingly in Ruby because Ruby has methods defined in various
# classes that are equivalent ot the for loop.
puts 
3.times do
    print 'Ho! '
end

puts 
print 'Ho! '.*3