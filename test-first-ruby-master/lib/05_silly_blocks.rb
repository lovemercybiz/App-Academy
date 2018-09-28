def reverser
    word = yield
    words = word.split(' ')
    answer = []
    for i in words
        i = i.reverse
    answer << i
    end
    return answer.join(' ')
end #done^^
# p reverser {"hello dolly"}
# p reverser {"hello"}

def adder (num = 1)
    num + yield
 end #done^^
 #p adder {5}

def repeater(num = 1)
    num.times do
    yield
    end
  end