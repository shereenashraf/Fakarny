class AddIntrestIdToSpecifics < ActiveRecord::Migration
  def change
    add_column :specifics, :intrest_id, :integer
  end
end
