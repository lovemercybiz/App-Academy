# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
    hrs = (minutes/60)      #60 minutes == 1 hr
    mins = (minutes%60)     # gets remaining minutes 
    #ex: 150 - 60 = 90 - 60 = 30. Since 60 doesnt go into 30, that how many minutes you have left.
    
    if mins < 10            #for fomatting reason so its "6:00" instead of "6:0"
        mins = mins.to_s+"0"
    end
    return "#{hrs}:#{mins}"  #String Interpolation and the require format.
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
