class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email
      t.integer :age
      t.integer :state
      t.string :work_role

      t.timestamps null: false
    end
  end
end
