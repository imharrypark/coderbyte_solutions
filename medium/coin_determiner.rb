def coin_determiner(num, coins = [11, 9, 7, 5, 1], coin_count = 0)
  return coin_count if num == 0

  i = 0
  while coins[0] * (i + 1) <= num
    i += 1
  end

  coin_count += i
  remainder = num - coins[0] * i
  coin_determiner(remainder, coins[1..-1], coin_count)
end