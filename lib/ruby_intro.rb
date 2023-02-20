# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # loop through arr accumulating sum
  sum = 0
  for element in arr
    sum = sum + element
  end
  return sum
end

def max_2_sum arr
  # edge cases
  if arr.length() == 0
    return 0
  end
  if arr.length() == 1
    return arr[0]
  end
  # sort array than return sum of the two largest values
  sorted_arr = arr.sort()
  return sorted_arr[sorted_arr.length()-1] + sorted_arr[sorted_arr.length()-2]
end

def sum_to_n? arr, n
  # nested list to add all elements together
  for element in arr
    if arr.index(element) < arr.length
      for sub_element in arr.slice(arr.index(element)+1, arr.length())
        if element + sub_element == n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length() == 0
    return false
  end
  # check if first character matches regex range for constants
  if s[0].downcase =~ /^[b-df-hj-np-tv-z]/
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s == ''
    return false
  end
  remove_whitespace = s.split(" ").join()
  puts remove_whitespace
  # check that argument is valid binary
  if remove_whitespace =~ /^[0*|1*]*$/
    # convert to base 2 binary and check if muyltiple of 4
    binary_s = remove_whitespace.to_i(2)
    if binary_s % 4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  # constructor with isbn and price
  def initialize(isbn, price)
    # ensure isbn is valid number
    raise ArgumentError.new("Expected non-empty string for isbn") if isbn == ''
    raise ArgumentError.new("Expected a positive,non-zero price") if price <= 0

    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string()
    return "$" + "%.2f" % @price
  end
end
