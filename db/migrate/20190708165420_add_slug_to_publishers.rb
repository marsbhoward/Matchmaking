class AddSlugToPublishers < ActiveRecord::Migration[5.2]
 def self.up    
    change_table :publishers do |t|
   
         t.string 	:slug

        end
    end
end
