# Loading the module
$LOAD_PATH << '.'
require 'temp'

class Convert
  include Temp
end

f = Convert.new
puts f.f_to_c(32)
