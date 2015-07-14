def prime_mover(n)
  return 1 if n == 1
  return 2 if n == 2

  prime_nums = [1,2]

  candidate = 3

  while prime_nums.length <= n
    prime_nums << candidate if prime?(candidate)
    candidate += 2
  end

  prime_nums.last
end

private

def prime?(num)
  array = (2..Math.sqrt(num)).to_a
  array.any?{|n| num % n == 0} ? false : true
end