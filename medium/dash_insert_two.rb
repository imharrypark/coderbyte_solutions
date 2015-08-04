def dash_insert_two(str)
  result = ""
  nums = str.split("")
  nums.each_with_index do |n, i|
    if n.to_i.even? && nums[i+1].to_i.even?
      result << "#{n}*"
    elsif n.to_i.odd? && nums[i+1].to_i.odd?
      result << "#{n}-"
    else
      result << n
    end
  end
  result
end