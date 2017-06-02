#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum (array)
    sum = 0
    array.each do |x|
        sum += x
    end
    sum
end

def multiply(array)
  array.reduce(1, :*)
end

def power(x, y)
  x**y
end

def factorial(n)
  (1..n).inject(:*) || 0
end
