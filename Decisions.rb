# Decisions (expressions) in Ruby evaluate to true or false
x = 4

puts x.<5
puts x.<=4
puts x.>4

puts true.class
puts false.class
puts true.methods.inspect
puts false.methods.inspect

# Simple decisions may be in one-line or block form.
# Block form If
if x.==4
    puts 'x is equal to 4.'
end

# Observations: Notice the absence of curly brackets aroudn the code block.
# Notice thr absence of parenthesis aroud the expression. The keyword end
# is used to tell Ruby the end of the code block to be executed.

# One-line Form If
puts 'x is equal to 4.' if x.==4
puts 'x is not equal to 5.' if x.!=5

# As a programmer, you should strive to write fewer lines of code.

# One-line Forn Unless
# Unless tests if its condition is false.
puts 'x is not equal to 5.' unless x.==5

# Block Form Unless-Else
unless x.==4
    puts 'x is not equal to 4.'
else   
    puts 'x is equal to 4.' 
end

# Decisions may involve other types of objects, inclduign Dates.
today = Time.now
puts today
puts today.class

# Block Form If-Elsif
if today.saturday?
    puts 'Do chores around the house.'
elsif today.sunday?
    puts 'Relax.'
else
    puts 'Go to school.'
end

# There are other values in Ruby that evaluate to true.
puts 'true is true.' if true
puts '1 is true.' if 1
puts '0 is true.' if 0
puts '1.5 is true.' if 1.5
puts 'Time.now is true.' if Time.now

# The only things that don't evaluate to true are false and nil.
puts 'false is not true.' if false
puts 'nil is not true.' if nil

# Unless tests if its condition is false.
puts 'false is not true.' unless false
puts 'nil is not true.' unless nil
# The logical operators && and || work very similar to the way they do in Java.
puts false && true
puts false || true

# There is short circuit evaluation in Ruby. The interpreter skips the evaluation
# of sub-expressions in a logical expression.
# If sub-exressions are joined by &&, the interpreter will skip the evaluation of
# all subsequent expressions as soon as the first false sub-expression is encountered. 
# puts true && this_will_cause_an_error
puts false && this_will_cause_an_error

# If sub-expressions are joined by ||, the intepreter will skip the evaluation of 
# all subsequent expressions as the first true sub-expression is encountered. 
puts true || this_will_cause_an_error
# puts false || this_will_cause_an_error

# WHenever you need to use If_Elseif statements, you should consider using 
# the Ruby case statement. In other programming languages it's known as the switch
# statement.
# The componenets of the Ruby case statement definiton. Takes the variable you are going
# to work with.
# when -every conditon that can be matches is one when statement.
# else - if nothing matches then the else will be executed. This is optimal.
capacity = 25

case capacity
when 0
    puts 'You ran out of gas. '
when 1..20
    puts 'Take is almost empty. Quickly find a gas station. '
when 21..70
    puts 'You should be ok for now. '
when 71..100
    puts 'Tank is almost full. '
else
    puts "Error: capacity has an invalid value #{capacity}"
end