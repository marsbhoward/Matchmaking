class GamesController < ApplicationController


	def new 
		@publisher = Publisher.find_by(slug: params[:publisher_publisher]) 		
		@publisher.games.create(name:params[:name], publisher_name: @publisher.name, year: params[:year], slug: params[:name].parameterize)
		redirect_to '/publishers/'+@publisher.name.parameterize+'/', notice: "game added"	
	end

	def create
		@publisher = Publisher.find_by(slug: params[:publisher])
		render "create"
		#Publisher.find_by(publisher.id).games.createGame.create(:name, :publisher_name, :year, :publisher_id,:slug)
	end


	def show
		@user = current_user
		@publisher = Publisher.find_by(slug: params[:publisher_publisher])
		@game = @publisher.games.find_by(slug: params[:game])
	end

	def index
	end

	def grouping
		@publisher = Publisher.find_by(slug: params[:publisher])
		@game = @publisher.games.find_by(slug: params[:game])
		render "grouping"
	end
end

