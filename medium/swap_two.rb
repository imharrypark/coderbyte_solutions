def swap_two(str)
  chunks = str.split(" ")
  result = ""

  i = 0
  while i < chunks.length
    first_ele = chunks[i][0]
    last_ele = chunks[i][-1]

    if numstring?(first_ele) && numstring?(last_ele)
      chunks[i][0] = last_ele
      chunks[i][-1] = first_ele
    end

    chunks[i].split("").each {|char| result << char.swapcase}

    result << " "
    i += 1
  end

  result.chop
end

private

def numstring?(str)
  return false if str.length > 1
  str.bytes[0] >= 48 && str.bytes[0] <= 57
end