$LOAD_PATH << '.'
require 'measure'

# included module
# m1 = Measure.new
# puts 'What is the radius of the circle ? '
# r = gets.chomp.to_i
# puts "The area of the circle is #{m1.area(r).round(2)}."
# puts "The perimeter of the circle is #{m1.perimeter(r).round(2)}."

# using extend module
puts 'What is the radius of the circle ? '
r = gets.chomp.to_i
puts "The area of the circle is #{Measure.area(r).round(2)}."
puts "The perimeter of the circle is #{Measure.perimeter(r).round(2)}."
