class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
  end
end
