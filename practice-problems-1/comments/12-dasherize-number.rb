# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  nums = num.to_s.split('')     #turns argument into a string and splits it into an array of single numbers. NOTE: '2' != 2
  nums.map! do |i|              #Loop through nums .map! so you can change the orginal array
    if i.to_i.odd? == true      # convert each iteration from string to integer, if its odd...
      i = "-"+ i                # add a "-" before the number
    end
   i.to_s                       #leave it alone if its not odd and convert it back a string
  end#^^^

  if nums[0].to_i.odd?                       #this is to compensate for odd numbers at the beginning.  
    nums[0].reverse!                         #example: ["-3","0", "-3"] >> ["3-","0", "-3"] 
  end

nums = nums.join('').split('')                      #converts ["-3","0", "-3"] >> ["3", "-", "0", "-", "3"].
nums.map! do |k|                                    #loop through nums
   index = nums.index(k)                            #set index
    if nums[index] == "-" && nums[index+1] == "-"   # checks to see if a dash is next to a dash
        nums.delete_at(index)                       #if so, delete it
    end
    k = k                                           # otherwise leave k alone
 end
return nums.join('')                             #return as a single string
end
p dasherize_number(303)
p dasherize_number(333)
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
