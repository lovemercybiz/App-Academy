def word_unscrambler(str, words)
  str = str.split('').sort.join('')
  wordsAlphabetize = words.map{|i|  i = i.split('').sort.join('')}
  answer  = []
  wordsAlphabetize.each do |i|
      index = wordsAlphabetize.index(i)
    if i === str
         answer << words[index]
    end
  end

return answer
end