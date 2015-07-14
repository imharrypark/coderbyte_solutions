def palindrome(string)
  stripped = string.gsub!(/[^0-9A-Za-z]/, '').downcase
  stripped == stripped.reverse
end