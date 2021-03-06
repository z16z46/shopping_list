def create_list 
	print "What is the name of your list? " 
	name = gets.chomp

	hash = { "name" => name, "items" => Array.new} 
end	
def add_list_item
	print "What is the item called? "
	item_name = gets.chomp 
                                                       
	print "How many? "
	quantity = gets.chomp.to_i

	hash = {"name" => item_name, "quantity" => quantity }
	return hash

end

def print_separator(character="-") 
	puts character * 80
end

def print_list(list) 
	puts "List Title: #{list['name']}"
	print_separator()           
	list["items"].each do |item| 
		puts "\tItem:" + item ['name'] + "\t\t\t" + 
			 "Qauntity: " + item ['quantity'].to_s 
		end	
	end

	print_separator()

puts "Great! Add some items after naming your list"

	list = create_list()
	list['items'].push(add_list_item()) 
	list['items'].push(add_list_item())
	list['items'].push(add_list_item())


	print_separator()

	puts "Here's your list:\n"
	print_list(list)

	print_separator()



