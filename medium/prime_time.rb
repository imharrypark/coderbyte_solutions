def prime_time(num)
  array = (2..Math.sqrt(num)).to_a
  array.any? {|n| num % n == 0} ? false : true
end