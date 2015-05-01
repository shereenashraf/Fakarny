class CreateXes < ActiveRecord::Migration
  def change
    create_table :xes do |t|
      t.integer :body

      t.timestamps
    end
  end
end
