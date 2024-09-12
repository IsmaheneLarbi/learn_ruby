# exlusive
puts "loop with an exclusive upper bound"
for i in 1...4 do
    puts "oh oh"
end
puts "oh no no"

# inclusive
puts "loop with an inclusive upper bound"
for i in 1..3 do
    puts "oh oh"
end
puts "oh no no"

puts "loop with a one line syntax"
for i in 1..3 do puts "oh oh" end
puts "oh no no"  

puts "inclusive .upto loop"
# works on strings, dates and integers
1.upto(5) do |x|
    puts i
end

'a'.upto('d') {|i| puts i}
5.downto(1) {|i| puts i}

puts "loop using int.times {code block}"
# Times and each are iterators
# starts count at 0
3.times {puts "oh oh"}
puts "oh no no"

3.times {|x| puts x}

i = 0
while i < 10
    puts i
    i += 1
    break if i == 4
end

# to skip certain elements
for i in 1..3
  next if i % 2 == 0
  puts i
end

# loop until condition is true
i = 1
until i == 4 do
  puts i
end 