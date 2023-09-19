# creating and instantiating an array
arr1 = [1, "learning ruby", 0.0]

# creating an array using Array.new with 0, 1 or 2 params
# Array.new(size, value)
arr2 = Array.new
arr3 = Array.new()
# if no value is specified, value == nil
arr4 = Array.new(3)
# the array is populated with references to the same object
arr5 = Array.new(3, "halliwell sister")
print(arr5)
