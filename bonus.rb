contact_list=[]

loop do

  puts "--- Contact List Menu ---"
  puts "1) All Contacts"
  puts "2) Create Contact"
  puts "3) Remove Contact"
  puts "4) Edit Name"
  user_input = gets.chomp


  if user_input == "quit"
    break
  end

  if user_input == "1"
      contact_list.each do |name|
        puts name
      end

  elsif user_input == "2"
    puts "What is contact name?"
    name = gets.chomp
    contact_list.push(name)

  elsif user_input == "3"
    puts "What contact would you like to remove?"
    counter = 1
    contact_list.each do |name|
      puts "#{counter} #{name}"
      counter = counter + 1
    end
    remove_name = (gets.chomp.to_i) - 1
    contact_list.delete_at(remove_name)
    puts "Contact removed"

  elsif user_input == "4"
    puts "What name would you like to edit?"
    counter = 1
    contact_list.each do |name|
      puts "#{counter} #{name}"
      counter = counter + 1
    end
    edit_name = (gets.chomp.to_i) - 1
    puts "What would you like to change the name to?"
    new_name = gets.chomp
    contact_list[edit_name] = new_name

  else
    puts "Bad User Input, Please Try Again."

  end

end
