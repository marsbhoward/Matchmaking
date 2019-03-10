class AddUserProvider < ActiveRecord::Migration[5.2]
  def self.up
    change_table :users do |t|

    t.string :provider
    end
  end
end