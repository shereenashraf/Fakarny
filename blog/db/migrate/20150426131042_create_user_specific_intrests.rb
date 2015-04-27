class CreateUserSpecificIntrests < ActiveRecord::Migration
  def change
    create_table :user_specific_intrests do |t|
      t.integer :intrest_id
      t.integer :user_id
      t.integer :specific_id

      t.timestamps
    end
  end
end
