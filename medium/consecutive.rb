def consecutive(arr)
  arr.sort!
  count = 0
  i = 0
  while i < arr.length - 1
    diff = arr[i+1] - arr[i]
    if diff > 1
      count += diff - 1
    end
    i += 1
  end

  count
end