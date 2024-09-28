# arr = [3, 5, 8, 9]
arr = [8, 3, 5, 6, 23, 10]
D = 100000

def find_smallest_positive_distance(arr)
  n = arr.length
  min = D

  for i in 0..n-1
    for j in i+1..n-1
      diff = (arr[j] - arr[i]).abs()
      min = diff if diff && diff < min
    end
  end
  return min
end

def find_smallest_positive_distance_ordered(arr, D)
  n = arr.length
  small = arr.slice(0, n-1).insert(0, 0)
  min = D

  result = []
  for i in 0..n-1
    current_elt = arr[i] - small[i]
    result << current_elt
    min = current_elt if current_elt < min
  end
end

def insertion_sort(arr, nbr)
  i = 0
  while i < arr.length && arr[i] < nbr do
    i += 1
  end
  arr.insert(i, nbr) if i == arr.length || arr[i] > nbr
  return arr
end

# puts find_smallest_positive_distance([1, 5, 6, 3, 9])