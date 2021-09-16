# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |ele|
    total += ele
  end
  return total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    if arr[0] > arr[1]
      max_1 = arr[0]
      max_2 = arr[1]
    else
      max_1 = arr[1]
      max_2 = arr[0]
    end
    arr[2..].each do |ele|
      if ele > max_1
        max_1 = ele
        max_2 = max_1
      elsif ele > max_2
        max_2 = ele
      end
    end
    return max_1 + max_2
  end
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
    arr.length.times do
      ele = arr.pop(1)[0]
      if arr.include? n-ele
        return true
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
  char_pattern = '[a-zA-Z]'
  ret_flag = false
  if s[0]
    if s[0].match char_pattern
      if not vowels.include? s[0]
        ret_flag = true
      end
    end 
  end
  return ret_flag
end

def binary_multiple_of_4? s
  valid_binary_check = true
  multi4_gt0_pattern = "00$"
  ret_multiple4 = false

  s.split('').each do |char|
    if not ['0', '1'].include? char
      valid_binary_check = false
    end
  end
  
  if valid_binary_check
    if s == '0'
      ret_multiple4 = true
    elsif s.match multi4_gt0_pattern and s.match '1'
      ret_multiple4 = true
    end
  end

  return ret_multiple4
end

# Part 3

class BookInStock
  def initialize isbn, price
    raise ArgumentError, "isbn is empty" unless isbn.length > 0
    raise ArgumentError, "price should be lager than zero" unless price > 0
    @price = price
    @isbn = isbn
  end
  
  attr_accessor :price
  attr_accessor :isbn

  def price_as_string 
    return "$%0.2f" % @price
  end
end
