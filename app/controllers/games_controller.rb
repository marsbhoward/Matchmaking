class GamesController < ApplicationController


	def new 
		@publisher = Publisher.find_by(slug: params[:publisher])
	end

	def create
		@publisher = Publisher.find_by(slug: params[:publisher]) 		
		@game =@publisher.games.new(game_params)
		
		if @game.save
			redirect_to '/publishers/'+@publisher.name.parameterize+'/', notice: "game added"	
		else
			
			redirect_to '/publishers/'+@publisher.name.parameterize+'/', notice: "The game you attemted to add is already present or has not been released"
		end
	end


	def show	
		@user = current_user
		@publisher = Publisher.find_by(slug: params[:publisher_id])
		#issue with games with same name but different years
		@game = @publisher.games.find_by(slug: params[:id])
	end

	def index
	end

	def grouping
		@publisher = Publisher.find_by(slug: params[:publisher_id])
		@game = @publisher.games.find_by(slug: params[:id])
		render "grouping"
	end

	def game_params
		params.require(:game).permit( :name, :year, :publisher_name, :slug)
	end
end

