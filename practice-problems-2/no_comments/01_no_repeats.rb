def no_repeat?(year)
  yearArr = year.to_s.split('').uniq
  if year != yearArr.join.to_i
      return false
  else 
      return true
  end
end
#p no_repeat?(1234)

def no_repeats(year_start, year_end)
  years = (year_start..year_end).to_a
  answer = []
  for i in years
      if no_repeat?(i) == true
          answer << i
      end
  end
  return answer
end