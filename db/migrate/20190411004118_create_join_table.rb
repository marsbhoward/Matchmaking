class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :user_games, id: false do |t|
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true
      # t.index [:_id, :_id]
      # t.index [:_id, :_id]
    end
  end
end
