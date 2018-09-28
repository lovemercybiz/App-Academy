def no_repeat?(year)
    yearArr = year.to_s.split('').uniq              #convert year to string,split it by each number, and remove duplicate numbers
    year != yearArr.join.to_i ? false : true        #convert uniq year back to number and see if the orginal year matches it.
end


def no_repeats(year_start, year_end)
    years = (year_start..year_end).to_a             #create an array of the years
    answer = []                                     #holds results
    for i in years                                  #loop through years
        if no_repeat?(i) == true                    # if the year, after going through the helper method, is true
            answer << i                             #add it to the answer array
        end
    end
    return answer                                   #return answer at the end
end