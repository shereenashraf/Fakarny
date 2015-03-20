class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :providername
      t.text :providerinfo
      t.text :contactus

      t.timestamps null:false
    end
  end
end
