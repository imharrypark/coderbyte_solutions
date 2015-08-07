def swap_two(str)
  chunks = str.split(" ")
  result = ""

  i = 0
  while i < chunks.length
    first_ele = chunks[i][0]
    last_ele = chunks[i][-1]

    if numeric?(first_ele) && numeric?(last_ele)
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

def numeric?(str)
  str =~ /[0-9]/
end