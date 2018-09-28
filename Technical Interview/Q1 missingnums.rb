#from youtube technical interview stream

def missingnums(arr)
    answer = (arr.first..arr.last).to_a             # create a range array from the first number to the last number in the arg
    arr.each{|i| answer.delete(i)}                  # loop through arg and if a number is in an range array, delete that number from the range
    return answer                                   #return range
end

p missingnums([1,3])==[2]
p missingnums([2,3,7])#==[4,5,6]
p missingnums([-5,-1,0,3]) ==[-4,-3,-2,1,2]