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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
