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

arr = [1, [2], [3, [4]]]
p deep_dup(arr)