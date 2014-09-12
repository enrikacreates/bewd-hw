class PantsController < ApplicationController

    def home
      
    end

    def results
      @city = params['city']
      # Anytime there is a space, turn it into a +
      url_safe_city = @city.gsub(' ', '+')

      url = "http://api.openweathermap.org/data/2.5/weather?q=#{url_safe_city},us"

      @resp = HTTParty.get(url)
      @high_old = ((@resp['main']['temp_max'] - 273) * 1.8 ) + 32
      @high = @high_old.round(0)
          if @high < 74
            @message = "PANTS"
          else
            @message = "NO PANTS"
          end
    end
end