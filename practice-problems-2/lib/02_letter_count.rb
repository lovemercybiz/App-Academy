def letter_count(str)
    str = str.split('').sort                            # turn the string into an array of letters in alphabetical order
    answer = Hash.new                                   # create new hash, will return later
    for i in str                                        # loop through array of letters
        answer[i] = str.count(i) unless i == " "        # create a key in the hash and set the value to the number of occurrences for the given key
    end
    return answer                                       # return hash
end