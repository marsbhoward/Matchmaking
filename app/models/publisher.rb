class Publisher < ApplicationRecord
	extend Slugifiable::ClassMethods
  	include Slugifiable::InstanceMethods
    
    has_many :games 
    

    def index
    	@publisher = Publisher.all
    end

end


