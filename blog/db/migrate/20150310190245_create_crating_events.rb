class CreateCratingEvents < ActiveRecord::Migration
  def change
    create_table :creatingevents do |t|
      t.date:date
      t.string :time
      t.text :place
      t.text :description

       t.timestamps null: false
    end
  end
end
