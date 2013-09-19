def range(first, last)
  if first == last - 1
    []
  else
    [first + 1] + range(first + 1, last)
  end
end

#iterative
def sum(arr)
  sum = 0
  arr.each { |i| sum += i }
  sum
end
#recursive
def r_sum(arr)
  return 0 if arr.empty?
  arr.first + r_sum(arr[1..-1])
end

#iterative
def power(base, exponent)
  (exponent == 0) ? 1 : base * power(base, exponent - 1)
end
#recursive
def r_power(base, exponent)
  if exponent == 0
    1
  elsif exponent % 2 == 0
    r_power(base, exponent / 2) ** 2
  else
    base * (r_power(base, (exponent - 1) / 2)) ** 2
  end
end


class Array
  def ddup
    dup = []
    
    self.each do |item|
      unless item.is_a? Array
        dup << item
      else
        dup << item.ddup
      end
    end
    
    dup
  end
end

# iterative
def fib(n)
  fib = []
  i = 0
  until i == n
    if i == 0
      fib << 0
    elsif i == 1
      fib << 1
    else
      fib << fib[i - 2] + fib[i - 1]
    end
    i += 1
  end
  
  fib
end
#recursive
def rfib(n)
  if n == 1
    [0]
  elsif n == 2
    [0, 1]
  else
    previous = rfib(n - 1)
    previous << (previous[-2] + previous[-1])
  end
end

def bsearch(array, target)
  middle_index = array.size / 2
  first_half = array[0...middle_index]
  second_half = array[(middle_index)..-1]
  middle_value = array[middle_index]

  if middle_value == target
    array.index(target)
  elsif array.length == 1
    nil
  elsif target < middle_value
    bsearch(first_half, target)
  else
    if bsearch(second_half, target).nil?
      return nil
    else
      (array.size / 2) + bsearch(second_half, target)
    end
  end
end





