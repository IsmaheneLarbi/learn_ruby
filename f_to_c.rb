puts "Enter a temperature in Fahrenheit :\n"
response = gets.strip.downcase

if response.match(/^[+-]?\d*$/)
    fahrenheit = response.to_i
    to_celsius = proc {|x| (x - 32) * 5/9}
    puts "The temperature in Celsius is : #{to_celsius.call(fahrenheit).to_i} °C."
elsif response == "q"
    return
else
    puts "temperature has to be a valid float, example: +32.4"
end
