## THe Hungry App- by Enrika Greathouse ##

appetizers = ["nachos", "bloomin' onion", "mozz sticks"]

entrees = ["filet mignon", "cowboy burger", "baja salad", "slice of 'za"]

dessert = ["chocolate pudding", "raspeberry cobbler", "banana split"]



party_order = []


puts "Welcome to Garbage Plate."

puts "How many in your party?\n\n"
party_size = gets.chomp.to_i


##########   Loop Begins...  ####### 

party_size.times do #loop for the number of people in the party who's ordering
      order = {} #intiate the hash order inside the loop

      puts "what is your name?" #ask user for their name
      user_input = gets.chomp.to_s #save the name of the person ordering to "user_input"
      order ['name'] = user_input #put it to the order hash, with the name as the key

      

      #####################################
       ##     Ordering Appetizers        ##
      #####################################

      puts "\nAppetizers\n" #print out the appetizer menu title

      appetizers.each_with_index do |app, index| #putting each item with it's index into temp variables app, & index so we can work with them within the block below
      index += 1 #make the working variable "index" start at 1 instead of 0
        puts "#{index} - #{app}" #print out the appetizer menu
      end

      puts "\nWhat appetizer do you want?" #ask user for their appetizer
      user_input = gets.chomp.to_i
      user_input -= 1 #put index back to orginal order before putting back into app_orrdered holder(variable)
      

      app_ordered = appetizers [user_input] #put choice from appetizer array (using the user's input) into the variable app_ordered
      # example: app_ordered = appetizers [1]

      puts "\nYou ordered #{app_ordered}" # print out what they ordered

      order ['app'] = app_ordered #store the string from the "app_ordered" variable into a value for the key called "app" in the order hash
      


      #####################################
       ##     Ordering Entree's          ##
      #####################################

      puts "\nEntre's\n"
      entrees.each_with_index do |app, index|
      index += 1
        puts "#{index} - #{app}"
      end

      puts "\nWhat Entre would you like?"
      user_input = gets.chomp.to_i
      user_input -= 1

      entre_ordered = entrees [user_input]

      puts "\nok, so for your Entre you are having the #{entre_ordered}"

      order ['entre'] = entre_ordered
      


      #####################################
       ##     Ordering Deserts           ##
      #####################################

      puts "\nDessert's\n"
      dessert.each_with_index do |app, index| 
      index += 1
        puts "#{index} - #{app}"
      end

      puts "\nWhat desert would you like?\n"
      user_input = gets.chomp.to_i
      user_input -= 1

      dessert_ordered = dessert [user_input]

      puts "\nFor desert you ordered #{dessert_ordered}\n\n\n"

      order ['dessert'] = dessert_ordered

      party_order << order #stuff (shuffle) the full order into the end of the party_order array each time this loops over.


######  loop ends ################
end 


      
#####################################
##     Summary of Party's Order    ##
#####################################
     
puts "\n\n Your Party's Orders:"
puts "*************************\n\n\n"

 party_order.each do |order| #using this temp variable "order" to hold each hash so I can print out the value for each key directly using: varible['keyname'] instead of printing out the default hash return with the ugly rockets
      puts "Order for: #{order['name']}\n"
      puts "============================="
      puts "Appetizer: #{order['app']}\n\n"
      puts "Enrte: #{order['entre']}\n\n"
      puts "Dessert: #{order['dessert']}\n\n\n\n\n"
 end

