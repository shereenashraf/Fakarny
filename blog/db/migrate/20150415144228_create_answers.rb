class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|

      t.string :answerer
      t.text :body
 
      # this line adds an integer column called `article_id`.
      t.references :askprovider, index: true
 
      t.timestamps null: false
    end
  end
end