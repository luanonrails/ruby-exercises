def substrings (string, dictionary)
  words = string.split
  dictionary.reduce(Hash.new(0)) do |result, sub|
    words.each do |word|
      result[sub] += 1 if word.downcase.include? sub
    end
    result
  end
end