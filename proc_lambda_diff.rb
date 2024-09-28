# difference between a regular proc and a lambda
# Lambdas are procs that validate the number of args
# and returns to the method when it's done.
def batman_ironman_proc
  victor = proc { return 'Batman will win!' }
  victor.call # proc doesn't return to the method, we exit the method here
  'Iron Man will win!'
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda -> { 'Batman will win!' }
  victor.call
  # lambda goes back to the method after being run
  'Iron Man will win!'
end

puts batman_ironman_lambda
