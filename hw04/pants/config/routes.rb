Rails.application.routes.draw do
  
root to: 'pants#home'

get '/pants' => 'pants#home'

get '/results' => 'pants#results'
#define the director /directory_name => rocket into controller_name#action_name
#an action is a method
end
