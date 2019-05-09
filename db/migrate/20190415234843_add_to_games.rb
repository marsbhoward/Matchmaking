class AddToGames < ActiveRecord::Migration[5.2]
  def self.up    
    change_table :games do |t|
   
         t.string   :name
         t.string 	:publisher
         t.integer 	:year

        end
    end
end
