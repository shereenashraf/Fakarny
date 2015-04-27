class CreateAskproviders < ActiveRecord::Migration
  def change
create_table :askproviders do |t|
t.text :text
t.timestamps
end
end
end
