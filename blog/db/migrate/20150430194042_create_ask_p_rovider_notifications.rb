class CreateAskPRoviderNotifications < ActiveRecord::Migration
  def change
    create_table :ask_p_rovider_notifications do |t|
      t.boolean :checked
      t.references :user, index: true
      t.references :page, index: true

      t.timestamps
    end
  end
end
