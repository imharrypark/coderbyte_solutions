def array_addition(array)
  max = array.max
  array.delete(max)

  1.upto(array.length) do |n|
    if array.combination(n).any? do |sub_array|
      sub_array.inject{|sum, n| sum + n} == max
    end
      return true
    end
  end

  false
end