# When done, submit this entire file to the autograder.

# Part 1

def sum arr
 sum=0
 arr.each do |x|
  sum+=x
 end
return sum
end

def max_2_sum arr
 return 0 if (arr.empty? || arr.nil?)
 return arr.first if arr.length == 1
 #https://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-reduce
 arr.sort.last(2).reduce(:+)
end

def sum_to_n? arr, n
  len=arr.length
  if (len==0) then 
    return false
  end
  i=0
  while i<len
  j=i+1
  while(j<len)
  if(arr[i]+arr[j]==n)
    return true
  end
  j=j+1
  end
  i=i+1
  end
return false
=begin
# it could also be implemented like below (https://ruby-doc.org/core-2.2.0/Array.html#method-i-combination)
return false if arr.empty?
  arr.combination(2).any? {|a, b| a + b == n }
=end
end

    

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  # /pattern/i - Ignore case
  # https://ruby-doc.org/core-2.1.4/Regexp.html
  if(/^[b-df-hj-np-tv-z]/i.match(s) != nil)
    return true
  end
end

def binary_multiple_of_4? s
  return true if(s==0)
  #string might start with 0100 or 100 so we can also write ^[10] however should have a "0" or repetition at the end
  return true if(/^[01]*0$/.match(s)!=nil)
end

# Part 3

class BookInStock
attr_accessor :isbn, :price

 def initialize(isbn, price)
  raise ArgumentError,"Invalid argument" if isbn.empty? or price<=0
    @isbn = isbn
    @price = price
 end
  #https://ruby-doc.org/core-2.2.0/Kernel.html#method-i-sprintf
  def price_as_string
    sprintf "$%.2f", @price
  end
end
