class CreateUserGames < ActiveRecord::Migration[5.2]
  def change
    create_table :user_games do |t|
      t.integer :id = 0
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.boolean :lfg

      t.timestamps
    end
  end
end
