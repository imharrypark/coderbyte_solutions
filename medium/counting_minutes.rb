def counting_minutes(str)
  splited = str.split("-").map do |n|
    n.split(":")
  end

  h1 = splited[0][0].to_i
  m1 = splited[0][1][0..1].to_i
  meridian_1 = splited[0][1][2..3].downcase
  h2 = splited[1][0].to_i
  m2 = splited[1][1][0..1].to_i
  meridian_2 = splited[1][1][2..3].downcase

  total_min_1 = h1 * 60 + m1
  total_min_2 = h2 * 60 + m2
  diff = total_min_2 - total_min_1

  if meridian_1 == meridian_2
    if total_min_2 >= total_min_1
      diff
    else
      diff + 24 * 60
    end
  else
    diff + 12 * 60
  end
end