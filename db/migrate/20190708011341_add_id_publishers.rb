class AddIdPublishers < ActiveRecord::Migration[5.2]
 def self.up    
    change_table :publishers do |t|
   
         t.integer 	:publisher_id

        end
    end
end
