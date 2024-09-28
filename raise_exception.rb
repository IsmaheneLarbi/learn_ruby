# example of an exception raised
class Test
  def div(numerator)
    begin
      raise ZeroDivisionError, 'You divided by zero.' unless numerator != 0
    rescue ZeroDivisionError => e
      puts e.message
      puts e.backtrace.inspect
      puts 'bye!'
    end
    puts 8 / numerator
  end
end

Test.new.div(0)

