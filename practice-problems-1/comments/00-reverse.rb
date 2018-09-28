# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string) 
  answer = ""                 #what will be returned. Also holds result during program
  range = string.length-1     #The '-1' is to compensate for array index.
  #Ex: "abc".length == 3 HOWEVER,"abc"[3] is a nil value. So when take away one you include the whole string.

  range.downto(0) do |i|    #loop from the end of the string to the beginning of the string.
    answer << string[i]     #gets the value, located at the given index, and add it to the empty string.
  end
  return answer             #return answer at end
end
puts reverse('abc')
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
