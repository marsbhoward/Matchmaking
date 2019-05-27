class PublishersController < ApplicationController

	def new 
		@publisher = Publisher.new
	end

	def show
		@publisher = Publisher.find_by(project_name: params[:project_name])
	end

end