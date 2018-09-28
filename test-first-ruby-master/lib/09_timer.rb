#require "time"
class Timer
    attr_accessor :seconds, :time_string

    def initialize #(seconds = 0, time_string = "00:00:00")
        @seconds = 0
        @time_string = "00:00:00"
    end

def seconds=(sec) 
    @seconds = sec
end

def time_string(time = @seconds)
    #time = @seconds
    hrs = ((time/60)/60).floor
    mins = ((time/60) - (hrs * 60))
    sec = (time%60%60)

    if hrs < 10
        hrs = "0#{hrs}"
    end
    if mins < 10
        mins = "0#{mins}"
    end
    if sec < 10
        sec = "0#{sec}"
    end
    #time = hrs.to_s + ":" + mins.to_s + ":" + sec.to_s #time
    @time_string =  hrs.to_s + ":" + mins.to_s + ":" + sec.to_s #time
end
end

timer = Timer.new
timer.seconds = 12
#timer.time_string = nil
p timer
# p timer.seconds
p timer.time_string

# var hrs = Math.floor(minutes / 60);// use Math.floor() so it rounds down so isntead of 2.5 it would be just 2
# var mins = minutes%60; //gives you the remainder
# if (mins < 10){
#     mins = mins + '0'; //without this 360 min would 6:0 & not 6:00
# }