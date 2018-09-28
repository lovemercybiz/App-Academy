def morse_encode(str)
  str = str.split('')
  morseCode = {a: ".-", b: "-...",c: "-.-.", d: "-..", e: ".", f: "..-.", g: "--.", h: "....", i: "..", j: ".---", k: "-.-",	l: ".-..", m: "--", n: "-.", o: "---", p: ".--.",q: "--.-", r: ".-.", s: "...", t: "-", u: "..-", v: "...-", w: ".--", x: "-..-", y: "-.--", z: "--.."}
 answer = []
  for i in str
      answer << morseCode[i.to_sym]
  end
  return answer.join(' ')
end
