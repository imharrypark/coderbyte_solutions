def permutation_step(num)
  num_str = num.to_s

  i = -2
  while i >= -num_str.length
    fragment = num_str[i..-1]
    remaining = num_str[0...i]
    perms = fragment.split("").permutation.to_a
    possibilities = []

    perms.each do |perm|
      possibilities << perm.join if perm.join.to_i > fragment.to_i
    end

    if !possibilities.empty?
      step_fragment = possibilities.sort[0]
      remaining << step_fragment
      return remaining.to_i
    end

    i -= 1
  end

  return false
end