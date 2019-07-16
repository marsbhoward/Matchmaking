class PublishersController < ApplicationController

	def new 
		@publisher = Publisher.new
	end

	def show 
		@publisher = Publisher.find_by(slug: params[:publisher]) 
	end

end