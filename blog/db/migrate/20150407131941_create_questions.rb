class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body
      t.references :event, index: true

       t.timestamps  
    end
  

  end
end
