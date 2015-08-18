def string_reduction(str)
  choices = ['a','b','c']
  chars = str.split("")
  length = chars.length

  loop do

    i = 0
    while i < chars.length - 1
      if chars[i] != chars[i+1]
        choices.delete(chars[i])
        choices.delete(chars[i+1])
        p chars.slice!(i,2)
        chars.insert(i, choices[0])
        choices = ['a','b','c']
      end
      i += 1
    end

    length == chars.length ? break : length = chars.length
  end

  length
end