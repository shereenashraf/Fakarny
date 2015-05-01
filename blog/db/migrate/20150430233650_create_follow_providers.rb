class CreateFollowProviders < ActiveRecord::Migration
  def change
    create_table :follow_providers do |t|
      t.integer :page_id
      t.integer :user_id

      t.timestamps
    end
  end
end
