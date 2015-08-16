def bracket_matcher(str)
  return true if !str.include?("(") && !str.include?(")")

  chars = str.split("")
  brackets = []
  chars.each do |char|
    if char == "(" || char == ")"
      brackets << char
    end
  end

  b = brackets.join
  while b.length >= 2
    b = b.split("()").join
  end

  b == "" ? true : false
end