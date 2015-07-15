def letter_count(str)
  words = str.downcase.split(" ").map {|word| word.gsub(/[^0-9A-Za-z]/, '')}

  max = 0
  candidates = []
  words.each do |word|
    repeat_count = word.split('').length - word.split('').uniq.length
    if max < repeat_count
      max = repeat_count
      candidates = [word]
    elsif max == repeat_count
      candidates << word
    end
  end

  candidates.first
end