def sub_strings(compare, strings)
  
  words_array = []
  words_hash = {}
  strings.each do | string |
    if compare.include?(' ')
      words_array.push(string.split) 
    else
      if compare.include?(string)
        words_hash[string] = 1
      end
    end
  end
  words_array.each do | element|
    i = 0
    loop do
      if element.include?(strings[i]) && words_hash[strings[i]] != nil
        words_hash[strings[i]] = words_hash[strings[i]] + 1
      else
        words_hash[strings[i]] = 1
      end
      i = i + 1
      if i >= strings.length
        break
      end
    end
  end
  words_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_strings("below", dictionary) #provides the right output
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)