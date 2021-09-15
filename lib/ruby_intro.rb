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
    if arr[0] > arr[1]:
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
  if arr.length == 0
    return false
  else
    arr.each do |ele|
      if arr.include? n-ele
        return true
      end
    end
    return false 
  end
end

# Part 2

def hello(name)
  return "hello {#name}"
end

def starts_with_consonant? s
  vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']
  ret_flag = False
  if s[0]
    if not vowels.include? s[0]
      ret_flag = True
    end
  end
  return ret_flag
end

def binary_multiple_of_4? s
  pattern = "[1, 0]{4}"
  return s.match pattern
end

# Part 3

class BookInStock
  def initialization isbn_no, price
    raise ArgumentError, "isbn_no is empty" unless isbn_no.length > 0
    raise ArgumentError, "price should be lager than zero" unless price >= 0
    @price = price
    @isbn_no = isbn_no
  end 

  def price_as_string 
    puts "$%0.2f" % @price
  end
end
