def ordered_vowel_words(str)
  strArr = str.split('')
  vowels = "aeiou".split('').to_a
  vowelsInStr = []
  for i in strArr
       if vowels.include?(i)
          vowelsInStr << i
       end
  end
  
  if vowelsInStr != vowelsInStr.sort
      return ""
  end
  return str
end
