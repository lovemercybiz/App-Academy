# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#
# Difficulty: easy.

def sum_nums(num)
    return (1..num).inject(&:+)    # 1 soultion : create a range of numbers and add them together 

    # answer = 0 #building off of this variable
    # num.downto(1) do |i|    #loop from num down to 1
    #     answer += i         #add  each number to answer
    # end
    # return answer           #return answer
    # #^^ 2nd solution
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('sum_nums(1) == 1: ' + (sum_nums(1) == 1).to_s)
puts('sum_nums(2) == 3: ' + (sum_nums(2) == 3).to_s)
puts('sum_nums(3) == 6: ' + (sum_nums(3) == 6).to_s)
puts('sum_nums(4) == 10: ' + (sum_nums(4) == 10).to_s)
puts('sum_nums(5) == 15: ' + (sum_nums(5) == 15).to_s)
