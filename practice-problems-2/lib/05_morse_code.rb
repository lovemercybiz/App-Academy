def morse_encode(str)
    str = str.split('')                 # turn the string into array of letters
    morseCode = {a: ".-", b: "-...",c: "-.-.", d: "-..", e: ".", f: "..-.", g: "--.", h: "....", i: "..", j: ".---", k: "-.-",	l: ".-..", m: "--", n: "-.", o: "---", p: ".--.",q: "--.-", r: ".-.", s: "...", t: "-", u: "..-", v: "...-", w: ".--", x: "-..-", y: "-.--", z: "--.."}
   answer = []                          # holds result
    for i in str                        # loop trhough str
        answer << morseCode[i.to_sym]   # turn the letter into a symbol, then push the value into the answer array
    end
    return answer.join(' ')             #join the values
end
