def handle_input()
    print 'Insert number of elements (<99):'
    user_input= gets.chomp.to_i

    while user_input <= 0 || user_input > 99 do
        print "Please enter a valid number (<99):" 
        user_input= gets.chomp.to_i
    end
    array_created = Array.new(user_input) {rand(1..9)}
    return array_created
end

def handle_sub_array(array_created)
    sub_array = []
    i = 0
    sub_array_counter = 1
    
    array_created.each do |element|
        if sub_array.length == 0 || array_created[i-1] < array_created[i]
            sub_array << element
        else
            puts "Chuoi #{sub_array_counter}: #{sub_array}"
            sub_array = [array_created[i]]
            sub_array_counter += 1
        end
        i += 1
    end
    puts "Chuoi #{sub_array_counter}: #{sub_array}"
end


array_created = handle_input()
p array_created
handle_sub_array(array_created)
    