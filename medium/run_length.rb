def run_length(string)
  chars = string.split("")
  result = ""

  count = 1
  chars.each_with_index do |char, index|
    if index < chars.length && char == chars[index+1]
      count += 1
    else
      result << count.to_s
      result << char
      count = 1
    end
  end

  result
end
