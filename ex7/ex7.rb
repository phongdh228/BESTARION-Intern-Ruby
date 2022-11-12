$master_hash = Hash.new

#Change input here
master_array = [12, 3, 1, 2, -6, 5, -8, 6]
hypersum = 1

def array_to_hash(array)
    i =0
    array.sort{ |a, b| b <=> a }
    array.each do |value|
        $master_hash[value] = i 
        i+=1
    end
end

def find_result_arrays(array, hypersum)
    array = array.sort{ |a, b| a <=> b }
    array_to_hash(array)
    result = Array.new
    array.each do |element|
        sum=hypersum-element
        i=0
        array.each do |value|
            if $master_hash[sum-value].nil? ==false && $master_hash[sum-value] != i && element<array[i] && array[i]<array[$master_hash[sum-value]] && element<array[$master_hash[sum-value]]
                sub_result = [element]
                sub_result << array[i] 
                sub_result << array[$master_hash[sum-value]]
                result << sub_result
            end
            i+=1
        end
    end
    result
end

p find_result_arrays(master_array, hypersum)