# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr != []
    return arr.reduce(:+)
  else 
    return 0
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  else
    return arr.sort { |a,b| b <=> a }.take(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  if arr.empty? || arr.size == 1
    false
  else
    return arr.permutation(2).any? { |a,b| a + b == n }
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if (s =~ /^[aeiouAEIOU]/i) || (s =~ /^[\d]/i) || (s =~ /^[\W]/i) || s.empty?
    false
  else
    true
  end
end

def binary_multiple_of_4? s
  if /^[01]+$/.match(s) == nil
    false
  else
    return s.to_i(2) % 4 == 0
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    
    raise ArgumentError if isbn.length == 0 || price <= 0
  end
  
  def price_as_string
    return "$%0.2f" % @price
  end
end
