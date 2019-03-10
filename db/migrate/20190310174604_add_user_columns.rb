class AddUserColumns < ActiveRecord::Migration[5.2]
  def self.up
    change_table :users do |t|

    t.string :name
    t.string :uid
    t.string :image

    end
  end
end
