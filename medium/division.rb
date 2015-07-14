def division(num1, num2)
  return num1 if num1 == num2

  common_factors = get_factors(num1) & get_factors(num2) # get the intersection of two arrays
  common_factors.last
end

private

def get_factors(num)
  result = []

  (1..Math.sqrt(num)).to_a.each do |n|
    if num % n == 0
      result << n
      result << num/n
    end
  end

  result.sort
end