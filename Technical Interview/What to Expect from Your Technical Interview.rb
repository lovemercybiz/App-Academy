
def devowel(str)
    vowels = "aeiou".split('')                  # get str of vowels
    str = str.split('')                         # turn string to array of letters

    str.each do |j|                             # loop through str
        index = str.index(j)                    # set index
        if index.odd? && vowels.include?(j)     # if the index is odd and a vowel...
            str[index] = ""                     # that value now equals empty space
        end
    end
return str.join('')                             # join together
end
#p devowel("banana") # == "bnn"