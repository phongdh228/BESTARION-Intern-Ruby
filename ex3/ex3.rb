def handle_input()
    print 'Insert number of elements (<99):'
    user_input = gets.chomp.to_i
    #check if user input in range of 1 to 99
    while user_input <= 0 || user_input > 99 do
        print "Please enter a valid number:" 
        user_input= gets.chomp.to_i
    end

    #create random integer array
    array_created = Array.new(user_input) {rand(1..9)}
    return array_created
end

def handle_sub_array(array_created)
    sub_array = [] #to store increse arrays
    i = 0 #run iteration over random array
    sub_array_counter = 1 #counting number of arrays
    
    array_created.each do |element|
        #if sub array is empty || previous element of random array is smaller than current element => store current element to sub array
        if sub_array.length == 0 || array_created[i-1] < array_created[i]
            sub_array << element 
        else
        #if not, print the sub array and assign it to hold the current element (array_created[i])
            puts "Chuoi #{sub_array_counter}: #{sub_array}"
            sub_array = [array_created[i]]
            sub_array_counter += 1
        end
        i += 1 #increse iteration

        #check for the last sub array``
        if i == array_created.length
            puts "Chuoi #{sub_array_counter}: #{sub_array}" 
        end
    end
end

#=================================================================
#============== EXECUTE REQUIREMENT OF EXCERCISE 03 ==============
#=================================================================

array_created = handle_input()
system "clear"
p array_created
handle_sub_array(array_created)