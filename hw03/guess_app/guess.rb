
#all my logic goes in here! Keep views in views.
require 'sinatra'
require 'httparty'


url = "http://bewd-la-06.s3-website-us-east-1.amazonaws.com/states.json"
states = HTTParty.get(url)

get '/' do 
  @random_state = states.to_a.sample(1)
  @state = @random_state[0][0]
  @capitol = @random_state[0][1]
  erb :home
end

get '/results' do 
  @state = params['state'] #params is passed from the form on pushing page(home.erb)
  @capitol = params['capitol']
  @guess1 = params['guess']
  @guess= @guess1.strip

  if @guess == @capitol
    erb :win
  else
    erb :lose
  end

  
end