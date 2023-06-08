require 'byebug'

def expo1(base, num)
    return 1 if num == 0
    base * expo1(base, num - 1)
end

def expo2(base, num)
    return 1 if num == 0
    return base if num == 1
    
    if n % 2 == 0
        expo2(base, num / 2) ** 2 
    else
        base * (expo2(base, (n - 1) / 2) ** 2)  
    end  
end


def deep_dup(arr)
    deep = []
    arr.each do |ele|
        if !ele.is_a?(Array)
            deep << ele
        else 
            deep << deep_dup(ele)
        end
    end
    deep
end

# arr = [1, [2], [3, [4]]]
# p deep_dup(arr)

def fib(n)
    arr = [1, 1]
    while arr.length < n
        arr << arr[-1] + arr[-2]
    end
    arr[0..n]
end

# p fib(5)

def fib2(n)
    if n <= 2 
        return [1] if n == 1
        return [1, 1] if n == 2
    else
        arr = fib2(n - 1)
        arr << arr[-1] + arr[-2]
    end
    arr
end
# p fib2(5)

def bsearch(arr, n)
    if arr.empty?
        return nil
    end
    mid = arr.length/2
    if arr[mid] == n
        return mid
    elsif arr[mid] > n 
        bsearch(arr[0...mid], n)
    elsif arr[mid] < n
        right = bsearch(arr[mid+1..-1], n)
        if !right
            nil
        else
            mid + 1 + right
        end
    end
end

def merge_sort(arr)
    return [] if arr.length == 0
    return arr if arr.length == 1
    merge_sort(arr[0...arr.length])
    merge_sort(arr[arr.length..-1])
    
end

def merge(arr1, arr2)
    new_arr = []
    arr1.each.with_index do |ele, idx|
        arr2.each.with_index do |ele2, idx2|
            if ele > ele2

            end
        end
    end
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil