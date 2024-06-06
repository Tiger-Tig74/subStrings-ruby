def substrings(input_strings, dictionary)
  substrings_counts = Hash.new(0)

  input_strings.downcase!

  input_strings.split.each do |word|
    dictionary.each do |substring|
      substrings_counts[substring] += 1 if word.include?(substring)
    end
  end
  return substrings_counts
end
