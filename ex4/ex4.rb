$master_array = Array.new
$master_hash = Hash.new
$sum = gets.chomp.to_i
$master_array = [3, 5, -4, 8, 11, 1, -1, 6]

# def handle_input()

# end

def hash_array(array)
    i =0
    array.each do |value|
        $master_hash[value] = i 
        i+=1
    end
    puts $master_hash
end

def find_pair(array)
    i = 0
    exit_code = false
    array.each do |value|
        break if exit_code == true
        if $master_hash[$sum-value] != nill
            puts $master_hash[$sum-value].to_i
            puts i
            exit_code = true
        end
        i+=1
    end
end

hash_array($master_array)
find_pair($master_array)

