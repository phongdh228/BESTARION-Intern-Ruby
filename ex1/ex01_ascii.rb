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
        
        #insert user input to list if user_input validated
        if check_natural_number(user_input) 
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



