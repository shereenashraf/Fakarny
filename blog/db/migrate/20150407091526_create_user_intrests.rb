class CreateUserIntrests < ActiveRecord::Migration
  def change
    create_table :user_intrests do |t|
      t.integer :inrest_id
      t.integer :user_id

      t.timestamps
    end
  end
end
