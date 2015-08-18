def three_five_multiples(num)
  sum = 0

  1.upto(num-1) do |n|
    sum += n if n % 3 == 0 || n % 5 == 0
  end

  sum
end