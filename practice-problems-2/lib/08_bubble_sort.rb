def bubble_sort(arr)
    num = arr.length                                    # get length of array

    loop do                                             
      (num - 1).times do |i|                            # to stay within array == -1
        if arr[i] > arr[i + 1]                          # if the value before is greater than the value after...
            arr[i], arr[i + 1] = arr[i + 1], arr[i]     # ...swap values
        end
    end
    break if arr == arr.sort                            # break statement 
end
    return arr                                          # return swapped array
end