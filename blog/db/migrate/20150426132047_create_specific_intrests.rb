class CreateSpecificIntrests < ActiveRecord::Migration
  def change
    create_table :specific_intrests do |t|
      t.string :specific_name

      t.timestamps
    end
  end
end
