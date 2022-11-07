b = Array.new
a = Array.new

a = [5,1,22,26,6,-1,8,10]
b = [1,6,-1,10, 8]

exit_code = false
temp_arr = a
b.each_with_index do |bi, bindex|
    break if exit_code == true
    a.each_with_index do |ai, aindex|
        a.drop(aindex+1) if bi == ai
    end
    if bindex == b.length && a.length == 0 
        exit_code = true
        puts "Not a duplicated array"
    else 
        puts "It's a duplicated array"
    end
end


