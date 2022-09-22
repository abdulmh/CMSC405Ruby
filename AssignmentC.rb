# 1. Write the lines of code that use a block-form while loop to compute
# the power of a number. The power of a number tells you how 
# many times to use the number in a multiplication statement; for example,
# 2 to the 0 power is 1
# 2 to the 1st power is 2 
# 2 to the 2nd power is 2 * 2 
# 2 to the 3rd power is 2 * 2 * 2
# 2 to the 4th power is 2 * 2 * 2 * 2
# 2 to the 5th power is 2 * 2 * 2 * 2 * 2

x = 2
expo = 4
while x.==2
    x = x.*expo*2
    print x
end

# 2. Write a function named gen_power that computes and returns
# the power of a number. It must have two integer input parameters; 
# the first must contain the number and the second must contain the power.

num = 4

def gen_power(num, pow)
    res = 1
    for count in 1..pow
      res = res * num
    end
    return res
end

# 3. Write the code to call the gen_power function and output the 
# return from the function.

puts gen_power(num,3) 

# 4. Write a function named gen_power that returns a code block. The code
# block should compute and return the power of a number. The code block
# must have two integer input parameters; the first must contain the number 
# and the second must contain the power.

def gen_power
    lambda do |num,pow|
        for count in 1..pow
            res = res * num
          end
          return res
    end 
end

# 5. Write the code to call the gen_power function and store the code 
# block it returns in a variable named p.

p = gen_power

# 6. Write the code to execute the code block contained in p 
# and output the code block's return.
puts p.call 3

# 7. Explain how you interacted with the Ruby programming language? Your
# response to this question must be at least 1 full paragraph (50 words).
# I interacted with the Ruby programming language by using my platform, which is my 
# Mac operating system, and the development environment Visual Studio Code. 
# While coding, I also used code blocks and while loops to execute my code. I 
# also used the call method to execute a previously written code block.


# 8. Which Ruby module provides a whole set of I/O related methods?
# The Kernel module in Ruby is responsible for I/O related methods.

# 9. What is Ruby's typing model?
# Ruby's typing model is strongly typed, meaning a variable or object
# has a specified type and it  cannot be changed change. A variable or object can be 
# manipulated based on its type. 
# It is also dynamically typed, which checks they types at runtime.

# 10. What syntax must you use to reference a variable value within in a String?
# You must use String interpolation syntax and double quotes with the String.

# Bonus (5 points). Explain what it means to be statically typed?