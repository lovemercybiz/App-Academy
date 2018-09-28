#from youtube technical interview stream

def sequence(seq,key)
   keyArr = key.split('')                                       #turn string into array
   testString = ""                                              #comparative string
   seq.chars {|i| testString << i if keyArr.include?(i)}        #push all the seq values that are also in the key array into a new comparative string
   testString.include?(key) ? true : false                      #if test string includes the orginal key, return true, else false
end

p sequence("arcata", "cat")     #true
p sequence("clat23", "cat")     #true
p sequence("cta", "cat")       #false
p sequence("coat", "cat")      # true
