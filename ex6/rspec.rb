require 'rspec/autorun'
class FirstExercise
    $natural_integer= []

    def search_minimun(array)
        min = array[0]
        array.each do |element|
            min = element if min >= element
        end
        min
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
                puts "#{input} is wronge type. Please enter a natural number!"
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
            wronge_input = []
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
                    else
                        wronge_input << sub_element
                    end
                end
                
                #create UX on the terminal
                system "clear" 
                p $natural_integer

                #displays the wrong input error message
                puts "The #{wronge_input} you have just enter are not imported to list (wronge type)" if wronge_input.size > 0

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
        $natural_integer
    end

    def execute_requirements()
        if $natural_integer.size > 0
            print "Natural number entered: "
            p $natural_integer
            search_minimun($natural_integer)
            return "Success"
        else
            puts "No natural number entered!"
            return "Failed"
        end
    end
end

arr = [5,1,3,7,9,4,2,7,11]

describe FirstExercise do
    ex06 = FirstExercise.new 

    it "find the minimum number of array" do 
         expect(ex06.search_minimun(arr)).to eq(arr.min)
    end

    it "verify a natural number" do 
        expect(ex06.check_natural_number(arr)).to eq(true, false)
    end

    it "get input from terminal" do 
        expect(ex06.handle_input()).to eq($natural_integer)
    end

    it "execute the requirement" do 
        expect(ex06.execute_requirements).to eq("Success", "Failed")
    end

end