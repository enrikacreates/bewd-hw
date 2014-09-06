require 'sinatra'
require 'httparty'
url = "http://mashable.com/stories.json"
results = HTTParty.get(url)

# page1
get '/' do 
 @stories = results
 erb :home 
end


# page2
get '/sort' do 
    
    @feed_pick = params['feed']
    @articles = results[@feed_pick] 

    erb :sort
end


# page3
get '/results' do 
    
    @feed_pick = params['feed']
    @articles = results[@feed_pick] 
    @sorter = params['sorter']
    

      if @sorter == 'title'
      @sorted_articles = @articles.sort_by { |hsh| hsh['title'] } 
        erb :title_results
          
      elsif @sorter == 'date'
       @sorted_articles = @articles.sort_by { |hsh| hsh['post_date_rfc'] }
       @sorted_articles = @sorted_articles.reverse
        erb :date_results
        
      elsif @sorter == 'author'
        @sorted_articles = @articles.sort_by { |hsh| hsh['author'] }
        erb :author_results
     
     end
end
