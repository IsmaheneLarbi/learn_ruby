nbr_map = {
  'M' => 1000,
  'D' => 500,
  'C' => 100,
  'X' => 10,
  'IX' => 9,
  'V' => 5,
  'IV' => 4,
  'I' => 1
}

def rec_roman_repr(nbr, it, repr = '')
  return repr if nbr == 0
  letter, denominator = it.next
  repr << letter.to_s * (nbr / denominator)
  rec_roman_repr(nbr % denominator , it , repr)
end

puts rec_roman_repr(0, nbr_map.each)
puts rec_roman_repr(3611, nbr_map.each)
puts rec_roman_repr(3614, nbr_map.each)
puts rec_roman_repr(3619, nbr_map.each)