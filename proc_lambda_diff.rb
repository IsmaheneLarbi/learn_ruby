def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call # proc doesn't return to the method, we exit the method here
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  # lambda goes back to the method after being run
  "Iron Man will win!"
end

puts batman_ironman_lambda