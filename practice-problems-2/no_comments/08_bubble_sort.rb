def bubble_sort(arr)
  num = arr.length

  loop do 
    (num - 1).times do |i|
      if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i] 
      end
  end
  break if arr == arr.sort
end
  return arr
end