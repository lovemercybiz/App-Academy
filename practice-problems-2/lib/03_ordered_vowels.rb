
def ordered_vowel_words(str)
    strArr = str.split('')                  # create array of letter from the string
    vowels = "aeiou".split('')              # create vowels array
    vowelsInStr = []                        # empty array to work with

    for i in strArr                         # loop through array of letters from the string
         if vowels.include?(i)              # if the letter is a vowel
            vowelsInStr << i                # put the vowel into an array
         end                    
    end
    
    if vowelsInStr != vowelsInStr.sort      # check to see if the vowels are in alphabetical order
        return ""                            
    end
    return str                               
end