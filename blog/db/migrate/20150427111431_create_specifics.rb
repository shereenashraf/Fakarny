class CreateSpecifics < ActiveRecord::Migration
  def change
    create_table :specifics do |t|

      t.string :specific_name
      t.references :intrests, index: true
      t.timestamps
    end

 
end
	
  
end
