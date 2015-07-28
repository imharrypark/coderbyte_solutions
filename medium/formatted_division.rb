def formatted_division(num1, num2)
  result = (num1 / num2.to_f * 10**4).round / 10**4.to_f
  non_dec = result.floor
  dec = result.to_s[-5..-1]

  str = ""
  non_dec.to_s.split('').reverse.each_with_index do |n, i|
    str << n
    if i % 3 == 2
      str << ","
    end
  end
  str.reverse + dec
end