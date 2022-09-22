# # i = 5
# # if i in 0..12
# #     puts "true"
# # else
# #     puts "false"
# # end

# # def sort_for_minimun array 
# #     min = 99
# #     array.each do |i|
# #         if min > array[i].to_i
# #             min = array[i].to_i
# #         end
# #     end
# #     return min
# # end




# #     mang = [9, 8, 764, 3, 52 ,1,0]
# # def search_for_minimun array
# #     min = 99
# #     array.each do |element|
# #         if min >= element
# #             min = element
# #         end
# #     end
# #     puts "Minimum number is #{min}"
# # end
# # exit_code =false
# # while exit_code == false do
# #     input = gets
# #     if input == -1
# #         exit_code=true
# #     elsif input in 0...100
# #         list_of_inputed.push(input.to_i)
# #     # elsif input.to_i >100 || input.to_i < 0
# #     #     puts "Please enter a valid natural number: "
# #     #     next
# #     # elsif input.is_a?(Integer) == false
# #     #     puts "Please enter a number: "
# #     #     next
# #     end
# # end
# # system "clear"
# # if "c".ord> 20
# #     puts "true"
# # end

# # user_input = gets.chomp
# # user_input.each_byte do |c|
# #     if c < 57 && c > 48
# #         puts c 
# #     else
# #         puts "Sai"
# #         break
# #     end
# # end

# # puts "ascii of #{user_input} is #{user_input.ord}"

# # $natural_integer= []

# # def search_minimun(array)
# #     min = 99
# #     array.each do |element|
# #         if min >= element
# #             min = element
# #         end
# #     end
# #     if array.size > 0
# #         puts "Minimum number of the list is #{min}"
# #     end
# # end

# # def check_natural_number(input)
# #     temp_array = []
# #     input.each_byte do |character|
# #         if character == 32
# #             return check_natural_number_line(input.split)
# #         elsif character > 58 || character < 47
# #             puts "Wronge type. Please enter a natural number!"
# #             return false
# #         end
# #     end
# #     return true
# # end

# # def check_natural_number_line(input)
# #     conditions = true

# #     input.each do |element|
# #         element.each_byte do |character|
# #             puts "Wronge type. Please enter a natural number!" if character > 58 || character < 47
# #         end
# #         $natural_integer << element.to_i if conditions == true
# #     end
# #     return true
# # end

# # def handle_input()
# #     #setup stop conditions 
# #     exit_code = false 
# #     element_counter = 0 

# #     loop do
# #         user_input = STDIN.gets.chomp
        
# #         #check stop condition
# #         if user_input.to_i == -1 || element_counter == 99
# #             exit_code = true
# #         end
# #         break if exit_code == true

# #         #check user_input validation
# #         is_natural_number = check_natural_number(user_input)

# #         #insert user input to list
# #         if is_natural_number == true
# #             $natural_integer.push(user_input.to_i)
# #             element_counter += 1
# #         end

# #     end

# #     #system "clear"
# # end

# # #execute exercise01

# # handle_input()
# # if $natural_integer.size > 0
# #     print "Natural number entered: "
# #     p $natural_integer
# #     search_minimun($natural_integer)
# # else
# #     puts "No natural number entered!"
# # end
# # i = STDIN.gets.chomp

# # puts "cl" if i == ""


# # puts "\n".ord
# # puts "\r".ord

# # puts"AAAAAAAAA"if "This is  the exercise01".include?(" ")
# # str = "This is  the exercise01".split
# # str.each do |i|
# #     puts i
# # end

$natural_integer= []

def search_minimun(array)
    min = array[0]
    array.each do |element|
        min = element if min >= element
    end
    puts "Minimum number of the list is #{min}"
end

def check_natural_number(input)
    #Check for empty input
    if input == ""
        puts "Please don't press ENTER for no reason!"
        return false
    end
    
    #check every character is a natural number.
    input.each_byte do |character|
        return true if character == 32
            
        if character > 58 || character < 47
            puts "Wronge type. Please enter a natural number!"
            return false
        end
    end
    return true
end

def handle_input()
    #setup stop conditions 
    exit_code = false 
    element_counter = 0 

    loop do
        user_input = STDIN.gets.chomp

        #check stop condition
        exit_code = true if user_input.to_i == -1 || element_counter == 99
        
        break if exit_code == true
        
        #handle inline input
        if user_input.include?(" ")
            sub_input = user_input.split #split input to array whoes elements hold a string without space
            sub_input.each do |sub_element|
                if check_natural_number(sub_element.delete('')) #kill the space. If not, it will remain space (dont know why LOL)
                    $natural_integer.push(sub_element.to_i)
                    element_counter += 1
                end
            end

            #create UX on the terminal
            system "clear" 
            p $natural_integer

        #insert user input to list if user_input validated
        elsif check_natural_number(user_input) 
            $natural_integer.push(user_input.to_i)
            element_counter += 1

            #create UX on the terminal
            system "clear" 
            p $natural_integer
        end

    end
    system "clear" #just to clean terminal :>
end

def execute_requirements()
    if $natural_integer.size > 0
        print "Natural number entered: "
        p $natural_integer
        search_minimun($natural_integer)
    else
        puts "No natural number entered!"
    end
end

#execute exercise01

system "clear"
handle_input()
execute_requirements()