user_input= gets.chomp.to_i
array_created = Array.new(user_input) {rand(1..9)}

# tst.each do |element|
#     element = Random.new()
#     element.rand(1..9)
#     puts tst
# end

p array_created
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
p sub_array
