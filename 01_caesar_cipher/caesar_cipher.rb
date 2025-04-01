def caesar_cipher(string, shift)
  result = ''
  string.each_char do |letter|
    if letter =~ /[a-zA-Z]/
      base = letter.downcase == letter ? 'a' : 'A'
      result += ((letter.ord - base.ord + shift) % 26 + base.ord).chr
    else
      result += letter
    end
  end
  result
end