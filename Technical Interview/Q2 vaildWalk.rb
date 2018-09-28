#from youtube technical interview stream

def vaildWalk(directions)
    directHash = Hash.new                                               #create hash
    directions.chars.each {|d| directHash[d] = directions.count(d)}     #create key and value pairs
    directHash["n"] == directHash["s"] && directHash["w"] == directHash["e"] ? true : false
    #if the direction and opposite direction occur the same number of times
end

p vaildWalk("nnnn") #false
p vaildWalk("nenessww") #true