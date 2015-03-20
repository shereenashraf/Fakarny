class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
  end
end
