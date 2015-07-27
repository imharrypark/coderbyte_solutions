def simple_mode(arr)
  max_freq = 0
  result = nil
  clone_arr = arr.dup

  arr.each do |num|
    initial = clone_arr.length
    clone_arr.delete(num)
    final = clone_arr.length
    freq = initial - final

    if freq > max_freq
      max_freq = freq
      result = num
    end
  end

  result
end