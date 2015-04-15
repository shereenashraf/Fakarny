class old< ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :time
      t.string :place
      t.text :description

          t.timestamps 
    end
  end
end
