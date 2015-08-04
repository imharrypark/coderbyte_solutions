def prime_checker(num)
  return true if num == 1
  return true if num == 2

  root = Math.sqrt(num)
  (2..root).to_a.any?{|n| num % n == 0} ? false : true
end