#require "time"

def measure(num = 1)
    start = (Time.now)#.to_i
    if num >= 1 #want the program to run atleast once
        num.times do
            yield
            end
    end
    if num < 1 #if program is asked to run a certain numer of times do so
        yield
    end
    return ((Time.now - start) / num).to_f # time and gets average
end #works with and without .to_i
#n = 0
#p measure(4) { n += 1 }

