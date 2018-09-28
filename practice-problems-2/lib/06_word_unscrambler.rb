def word_unscrambler(str, words)
    str = str.split('').sort.join('')                                   # put the str in alphabetical order
    wordsAlphabetize = words.map{|i|  i = i.split('').sort.join('')}    # put the each word in the words into alphabetical order
    answer  = []                                                        # holds ressult will return later
    wordsAlphabetize.each do |i|                                        # loop through words
        index = wordsAlphabetize.index(i)                               # set index 
      if i === str                                                      # if the word and string match
           answer << words[index]                                       # push that value at that index in the answer array
      end
    end

  return answer                                                         # return answer
end