# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  count = 0                         # return later, holds result
  letter = ""                       # return later, holds result
  for i in string.split('')         #loop through string's letter
      if string.count(i) > count    #if the the number of times a letter occurs is greater than the current overall count....
          letter = i                #set letter 
          count = string.count(i)   #set count
      end
  end
  return [letter,count]             #return letter and count is required format
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
