#write your code here
def add(a, b) 
    return a.to_f + b.to_f
end

def subtract(a, b)
    return a.to_f - b.to_f
end

def sum(numArray)
    sum = 0
    numArray.each do |num|
        sum += num.to_f
    end
    return sum 
end

def multiply(a, b)
    return a.to_f * b.to_f
end

def power(a, b)
    return a.to_f**b.to_f
end

def factorial(a)
    i = a
    factorial = i
    while i > 1
        factorial *= i
        i -= 1
    end
    return factorial
end

    