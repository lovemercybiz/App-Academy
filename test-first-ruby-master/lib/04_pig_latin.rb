# 1 if "aeiou".to_a add "ay" to end of word
# 2 if word begins with consonant, move letter to the end, and add "ay" to the end of word
def translate(word)
    vowels = "aeio".split('').to_a
    consonant = "bcdfghjklmnpqrstuvwxyz".split('').to_a 
  answer = []
  
  while word.split(' ').length == 1 
    words = word.split('')
    until vowels.include?(words[0])
         words = words.rotate(1)
    end
    words << "ay"
    return words.join('')
  end   # one word ^^
  
  if word.split(' ').length > 1 
  words = word.split(' ')
  end 
  words.each do |i|
  if vowels.include?(i[0])
    i << "ay"
    answer << i
    #return answer
  end
  end
  
    words.each do |j|
    if consonant.include?(j[0])
      j = j.split('').rotate(1).join('') until vowels.include?(j[0])
      j = j + "ay"
      #return j
      #j << j #correct format for 1 consonant but it doesnt add to array
     answer << j
    end
    end
    
  return answer.join(' ')
  end
  
  p translate("apple") #appleay
  p translate("banana")#ananabay
  p translate("cherry") #errychay
  p translate("eat pie") #eatay iepay
  p translate("the squid")
  p translate("the quick brown fox")