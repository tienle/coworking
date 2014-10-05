class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.text :messages

      t.timestamps
    end
  end
end
