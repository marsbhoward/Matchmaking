class Game < ApplicationRecord
	extend Slugifiable::ClassMethods
  	include Slugifiable::InstanceMethods
  	
    has_and_belongs_to_many :users
    belongs_to :publisher
  
    def index
    	@game = Game.all
    end
end
