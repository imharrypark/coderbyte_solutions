def arith_geo_two(array)
  arith_diff = []
  geo_diff = []

  index = 1
  while index < array.length
    arith_diff << array[index] - array[index-1]
    geo_diff << array[index] / array[index-1].to_f
    index += 1
  end

  if arith_diff.uniq.length == 1 && geo_diff.uniq.length != 1
    "Arithmetic"
  elsif geo_diff.uniq.length == 1 && arith_diff.uniq.length != 1
    "Geometric"
  else
    "Neither"
  end

end