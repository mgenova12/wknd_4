# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

calc = WhizBangCalculator.new

puts "Testing add method"
if calc.add(2,3) == 5 
  puts "PASS"
else 
  puts "Fail"
end
puts 

puts "Testing subtract method"
if calc.subtract(6,3) == 3 
  puts "PASS"
else 
  puts "Fail"
end
puts 

puts "Testing multiply method"
if calc.multiply(2,3) == 6 
  puts "PASS"
else 
  puts "Fail"
end
puts 

puts "Testing divide method"
if calc.divide(12,6) == 2 
  puts "PASS"
else 
  puts "Fail"
end
puts 

puts "Testing square_root method"
if calc.square_root(144) == 12 
  puts "PASS"
else 
  puts "Fail"
end
puts 

puts "Testing hypotenuse method"
if calc.hypotenuse(3,4) == 5 
  puts "PASS"
else 
  puts "Fail"
end
puts 

puts "Testing exponent method"
if calc.exponent(2,3) == 8 
  puts "PASS"
else 
  puts "Fail"
end
puts 


