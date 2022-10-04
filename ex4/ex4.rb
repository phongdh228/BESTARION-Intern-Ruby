$master_array = Array.new
$master_hash = Hash.new
$sum = gets.chomp.to_i

#case
$master_array = [3, 5, -4, 8, 11, 1, -1, 6]

def hash_array(array)
    i =0
    array.each do |value|
        $master_hash[value] = i 
        i+=1
    end
end

def find_pair(array = [], sum)

    hash_array(array)

    i = 0
    exit_code = false
    result = Array.new

    array.each do |value|
        break if exit_code == true

        #hash[key] has value && difference to i 
        if $master_hash[sum-value].nil? ==false && $master_hash[sum-value] != i

            result << array[i] 
            result << array[$master_hash[sum-value]]

            exit_code = true
        elsif
            i+=1
        end
    end

    p result
end

find_pair($master_array, $sum)