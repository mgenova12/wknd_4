# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Square_root

  def square_root(number)
    Math.sqrt(number)
  end

end

class SimpleCalculator
  include Square_root

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


calc = SimpleCalculator.new

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

# Copy your driver code from the previous exercise below:

