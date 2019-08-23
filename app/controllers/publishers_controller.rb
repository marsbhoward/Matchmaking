class PublishersController < ApplicationController

	def new 
		@publisher = Publisher.new
	end

	def show 	
		@publisher = Publisher.find_by(slug: params[:id]) 
		selection = 0
	end

	#def create
		#Publisher.create(:name,:slug :name.parameterize)
	#end

end