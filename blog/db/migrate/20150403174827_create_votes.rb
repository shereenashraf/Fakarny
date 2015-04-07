class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :matfakarny_id

      t.timestamps
    end
  end
end
