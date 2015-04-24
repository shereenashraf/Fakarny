class CreateMatfakarnies < ActiveRecord::Migration
  def change
    create_table :matfakarnies do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
