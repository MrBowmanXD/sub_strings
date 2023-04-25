class SubString
  def sub_string(string, dictionary)
    sub_string = {}
    dictionary.each do |word|
      sub_string[word.downcase] = dictionary.count(word.downcase) if string.downcase.include?(word.downcase)
    end
    sub_string
  end
end
