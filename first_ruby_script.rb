contact_list=[]

loop do

puts "--- Contact List Menu ---"
puts "1) All Contacts"
puts "2) Create Contact"
user_input = gets.chomp


if user_input == "quit"
  break
end

if user_input == "1"
  # puts "Contact List:"
    contact_list.each do |name|
      puts name
    end

elsif user_input == "2"
  puts "What is contact name?"
  name = gets.chomp
  contact_list.push(name)
  # contact_list.each do |name|
  #   puts name
  # end

else
  puts "Bad User Input, Please Try Again."

end
end
