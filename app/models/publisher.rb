class Publisher < ApplicationRecord
    has_many :games
    has_many :users, :through => :games=

    def index
    	@publisher = Publisher.all
    end

end
