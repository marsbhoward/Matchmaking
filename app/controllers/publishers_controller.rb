class PublishersController < ApplicationController

	def new 
		@publisher = Publisher.new
	end

end