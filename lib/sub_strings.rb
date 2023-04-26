class SubString
  def sub_string(string, dictionary)
    sub_string = {}
    dictionary.each do |word|
      sub_string[word.downcase] = string.downcase.scan(word.downcase).length if string.downcase.include?(word.downcase)
    end
    sub_string
  end
end
