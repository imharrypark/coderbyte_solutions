def caesar_cipher(str, num)
  char_bytes = str.bytes
  new_chars = []

  char_bytes.each do |byte|
    if byte >= 65 && byte <= 90
      if byte + num <= 90
        new_chars << (byte + num).chr
      else
        overage = (byte + num) - 90
        new_chars << (65 + overage - 1).chr
      end
    elsif byte >= 97 && byte <= 122
      if byte + num <= 122
        new_chars << (byte + num).chr
      else
        overage = (byte + num) - 122
        new_chars << (97 + overage - 1).chr
      end
    else
      new_chars << byte.chr
    end
  end

  new_chars.join
end