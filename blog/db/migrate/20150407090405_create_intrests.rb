class CreateIntrests < ActiveRecord::Migration
  def change
    create_table :intrests do |t|
      t.string :intrest_name

      t.timestamps
    end
  end
end
