# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  longestWord = ""                            #holds word
  words = sentence.split(' ')                 #split sentence into array of words.

    words.each do |word|                      #loop through array of words
      if  word.length > longestWord.length    #if the word the loop is on is greater than the longest word.. 
        longestWord =  word                   #set the longest word to that word.
      end
    end
    return longestWord                        #return longest word
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
