### Enrika Greathouse- HW 2 - mash_api 

require 'httparty'
url = "http://mashable.com/stories.json"

data = HTTParty.get(url)
channel_array = []

puts "Data from Mashable"
puts "-------------------\n\n\n"

puts"==========================="
puts"==========================="
puts"       NEW ARTICLES        "
puts"==========================="
puts"===========================\n\n\n"
new_articles = data['new']
channel_hash  = {}
authors_hash = {}


new_articles.each do |article|

 
 channel= article['channel']
 puts "In #{channel}"

 # if channel_hash[channel] == nil
 #    channel_hash[channel] = []
 #  end
 #  channel_hash[channel] += 1





  article_title = article['title']
  puts "*" * article_title.length
  puts article_title  
  puts "*" * article_title.length
  author = article['author']
  shares = article['shares']
  puts "by: #{author}" # Im printing the variable author to see what it contains, should contain each stories author. so from now on the lone variable 'author' is carring the story's author
  puts "URL: #{article['short_url']}\n\n\n"
  #puts "#{article['content']['plain']}\n\n\n"
  puts "****************"
  puts "  Share Stats:"
  puts "****************\n"
  puts "Twitter: #{article['shares']['twitter']}"
  puts "FB: #{article['shares']['facebook']}"
  puts "G+: #{article['shares']['google_plus']}"
  puts "LinkedIn: #{article['shares']['linked_in']}"
  puts "Stumble Upon: #{article['shares']['stumble_upon']}"
  puts "TOTAL: #{article['shares']['total']}\n\n\n" 

  

  
  if authors_hash[author] == nil #which it does for the first run this is a key set to the mashable story "author" name with a value of nil until I set it to something??
    authors_hash[author] = 0 # setting author which is a actual variable containing the mashable article's author name so ...key is authors name...&  integer is the value 
  end

  authors_hash[author] += 1 # count up add a count to authors score or number of articles written
 
 if channel_hash[channel] == nil
    channel_hash[channel] = []
 end
    channel_hash[channel] << article_title


end

puts "****************"
puts " Author Stats:"
puts "****************\n"


authors_hash.each do |key, value|
  if value > 1
  puts "#{key} wrote #{value} stories."
  puts "========================================\n\n"
  else
  puts "#{key} wrote #{value} story."
  puts "========================================\n\n"
  end
end

channel_hash.each do |channel, title_array|
puts "\n\n#{channel}\n\n"
    title_array.each do |title| 
      puts"#{title}\n\n"
    end
end
