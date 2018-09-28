# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
    vowels = "aeiou".split('').to_a #create an array of vowels
    count = 0                       # will return the count of vowels later
    for i in string.split('')       #look through array of the string's letters
        if vowels.include?(i)       #if string contains any letter in vowels
            count+= 1               #add one to overall count
        end
    end
    return count                    #return count at end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
