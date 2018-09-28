def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, num = 2)
    if num == 2
        return word + " " + word
    end
    return ((word + ' ' )* num).rstrip
end

def start_of_word(word, up)
    letters = 0..up - 1
    return word.slice(letters)
end

def first_word(words)
    words = words.split(' ')
    return words[0]
end

def titleize(phrase) 
    phrase = phrase.downcase.split(' ')
    answer = []
    for i in phrase
        if i == "and" || i == "the" || i == "over"
            answer << i
        else
        answer << i.capitalize 
        end
    end
    answer[0].capitalize!
    return answer.join(' ')
end 