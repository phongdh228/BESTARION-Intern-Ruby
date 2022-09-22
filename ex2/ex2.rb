# require "csv"


# headers = ["name", "email", "phone", "address", "date_of_birth", "profile"]

# CSV.open("./user.csv", "w") do |csv|
#     csv<<headers
#     user_info.each do |user|
#         csv << [user.name, user.email, user.phone, user.address, user.date_of_birth, user.profile]
#     end
# end

require 'csv'

# users =["Dang Hoang Phong",
#     "phongpro123@gmail.com", 
#     "0987654321", 
#     "Ho Chi Minh", 
#     "2001/01/01", 
#     "Like TV 100\", Some special charactor: \ / ' $ ~ & @ # ( ; \""
# ]

filename = 'profiles.csv'

CSV.open(filename, "w+") do |csv|
    for i in 1..500000 do
        csv << ["Dang Hoang Phong","phongpro123@gmail.com", "0987654321", "Ho Chi Minh", "2001/01/01","Like TV 100\", Some special charactor: \\ / ' $ ~ & @ # ( ; "]
    end
end

# start = Time.now
# p CSV.read(filename)
# finish = Time.now
# puts finish-start