def sub_strings(compare, strings)
  
  words_array = []
  words_hash = {}
  strings.each do | string |
    if compare.include?(' ')
      
      words_array.push(string.split)
      words_array.each do | element|
        if element.include?(string)
            words_hash[string] = 1
        end
      end
    else
      if compare.include?(string)
        words_hash[string] = 1
      end
    end
  end
  words_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_strings("below", dictionary) #provides the right output
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)