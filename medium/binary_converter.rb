def binary_converter(str)
  binary_array = str.split("")
  n = str.length - 1

  result = 0
  binary_array.each do |digit|
    result += 2**n if digit.to_i == 1
    n -= 1
  end

  result
end