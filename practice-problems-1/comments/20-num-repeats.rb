# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  count = 0                                         #overall count, will return later
  stringHash = Hash.new                             # create new hash

    string.chars.each do |i|                        # loop through each letter in string
        stringHash[i] = string.count(i)             # create a key in the hash and set the value to the to the number of occurrences of the given key
    end
    stringHash.each do |k,v|                        #loop through the hash
        if v > 1                                    # if the vale is greater than 1
            count += 1                              # add 1 to the overall count
        end
    end
  return count                                      # return overall count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
