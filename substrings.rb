# Take word as first arg, array of valid substrings as 2nd arg
# Return a hash listing each substring that was found in the original string & number of occurences
def substrings(string, dictionary)
  substr_hash = {}
  dictionary.each do |word|
    count = string.downcase.scan(/#{word}/).count
    substr_hash[word] = count if count > 0
  end
  p substr_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
