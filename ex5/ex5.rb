
a = [5,1,22,26,6,-1,8,10]
b = [1,22,26,10]

def is_sub_array?(main_array,sub_array)
    hash = Hash.new
    temp_array = Array.new
    for i in 0...main_array.length
        hash[sub_array[i]] = true if i < sub_array.length
        if hash[main_array[i]]
            temp_array.push(main_array[i])
            hash[main_array[i]] = false
       end
    end 

    if hash.has_value?(true) #if in hash still having true value
        false
    else 
        temp_array == sub_array #check the equality between 2 arrays
    end
end

puts is_sub_array?(a,b)