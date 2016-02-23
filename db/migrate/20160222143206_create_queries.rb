class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :operator, default: 0

      t.timestamps null: false
    end
  end
end
