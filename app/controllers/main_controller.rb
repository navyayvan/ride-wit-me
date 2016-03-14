class MainController < ApplicationController
  def index
  		uber_response = Rest.client.get 'uber://', {
	  		:params {
	  			:client_id => ENV['UBER_CLIENT_ID'],
	  			:pickup  => 'my_location'
  			}
  		}

    lyft_response = Rest.client.get 'lyft://', {
      :params {
        :ride_type => 'lyft',
        :partner => ENV['LYFT_CLIENT_ID']
      }
    }
    
  end

  def about
  end

end
