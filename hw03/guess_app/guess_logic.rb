
require 'httparty'

url = "http://bewd-la-06.s3-website-us-east-1.amazonaws.com/states.json"
states = HTTParty.get(url)



#logic: the following will go in the guess.rb page with @local variables
random_state = states.to_a.sample(1)
state = random_state[0][0]
capitol = random_state[0][1]
# then link to erb :home (@capitol & @state)




 
#the following form: will go on home erb page, name the input field 'guess'
puts "What is the capitol of #{state} (Don't forget to properly capitolize)?" 
guess = gets.chomp.to_s #? do I even need to?..put this logic on results page after data is passed
#add guess btn to form , send form (including hidden inputfields State & Capitol to be used in results page 

#logic will go under results page on main guess.rb page
if guess == capitol #guess = to params['guess'] capitol & state is from params as well
  puts "Congratulations #{capitol} is correct!"
else
  puts "Sorry #{guess} is not correct\n"
  puts "The state capitol of #{state} is #{capitol}"
  puts "Play again" #link back to home page
end
