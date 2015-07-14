def string_scramble(str1, str2)
  scramble_chars = str1.downcase.split('')
  word_chars = str2.downcase.split('')

  initial_scramble_length = scramble_chars.length
  initial_word_length = word_chars.length

  word_chars.each do |char|
    scramble_chars.delete(char) if scramble_chars.include?(char)
  end

  initial_scramble_length - initial_word_length == scramble_chars.length
end