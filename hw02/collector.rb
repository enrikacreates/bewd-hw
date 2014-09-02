
### Enrika Greathouse- HW 2 - Car Collector


new_collection = {}
car = {} #car is a hash to hold make, model, year, nickname*
new_collection['cars'] = [] #Yasssss this is an array inside of the new_collection hash! yEah Baby!!

puts "Hi, welcome to Car Collector"

puts "What is the name of this collection?"
new_collection[:name] = gets.chomp.to_s


puts "Great! your new collection will be called '#{new_collection[:name]}!'"
 user_input = 'y'
 while user_input == 'y' do
   
 

    puts "Would you like to add a car to #{new_collection[:name]}? (y,n)"
    user_input = gets.chomp.to_s
    
    # if user_input != 'y'||'n'
    #       puts "sorry that is an invalid answer try again"
    #       user_input = nil
 
    if user_input == 'y'
          puts "What is the make?"
          car['make'] = gets.chomp.to_s

          puts "What is the model?"
          car['model'] = gets.chomp.to_s

          puts "What is the year?"
          car['year'] = gets.chomp.to_s
      
          puts "Okay, we've added a #{car['year']} #{car['model']} #{car['make']} to The #{new_collection['name']} Collection."
          
          new_collection['cars']<< car
          
      elsif user_input == 'n'
        puts "ok here is your collection #{new_collection}"
          # puts "cars array now has the following cars: #{cars}"
          #how to get the array into hash or how to initialize an empty array into the hash. I missed this. need to write better notes.
    end
end

