def triple_double(num1, num2)
  chars1 = num1.to_s.split("").to_a
  candidates = []

  i = 0
  while i < chars1.length
    candidates << chars1[i] if chars1[i] == chars1[i+1] && chars1[i] == chars1[i+2]
    i += 1
  end

  candidates.any? {|n| num2.to_s.include?("#{n}#{n}")}
end