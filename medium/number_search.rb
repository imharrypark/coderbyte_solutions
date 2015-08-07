def number_search(str)
  str.gsub!(/[^0-9A-Za-z]/, '')

  chars = str.split("")
  total = 0
  letter_count = 0

  chars.each do |char|
    numeric?(char) ? total += char.to_i : letter_count += 1
  end

  (total/letter_count.to_f).round
end

private

def numeric?(str)
  str =~ /[0-9]/
end