def add(num1, num2)
    return num1+num2
end

def subtract(num1, num2)
    return num1 - num2
end

def sum(arr)
    return 0  if arr.empty?
    return arr.inject(&:+)
end

def multiply(num1, *num2)
    arr = [num1, num2].flatten
    return 0  if arr.empty? 
    return arr.inject(&:*)
end

def power(num1, num2)
    return num1 ** num2
end

def factorial(num)
    if num == 0 || num == 1
        return 1
    end
    return num * factorial(num - 1)  
end
