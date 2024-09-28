n = gets.to_i
arr = []

def get_insert_pos(arr, elt)
  i = 0

  return i if arr.empty?
  while i < arr.size && arr[i] < elt
    i += 1
  end
  return i
end

n.times do
  pi = gets.to_i
  pos = get_insert_pos(arr, pi)
  arr.insert(pos, pi)
end

# calc distance
i = 1
distance = []
while i < n
  distance << arr[i] - arr[i-1]
  i += 1
end

pp arr
pp distance
pp distance.min()