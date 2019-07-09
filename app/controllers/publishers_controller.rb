class PublishersController < ApplicationController

	def new 
		@publisher = Publisher.new
	end

	def show 
		@publisher = Publisher.find_by(slug: params[:slug]) 
	end
 

	def show
		@publisher = Publisher.find_by(params[:name])
	end

	def games
		params.require(:list_of_games).permit(:name, games: [])
  	end

end