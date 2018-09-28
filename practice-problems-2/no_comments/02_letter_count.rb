def letter_count(str)
  str = str.split('').sort
  answer = Hash.new
  for i in str
      answer[i] = str.count(i) unless i == " "
  end

  return answer
end