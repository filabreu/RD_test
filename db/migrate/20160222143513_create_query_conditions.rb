class CreateQueryConditions < ActiveRecord::Migration
  def change
    create_table :query_conditions do |t|
      t.integer :field
      t.string :condition
      t.integer :matcher, default: 0
      t.integer :operator, default: 0
      t.belongs_to :query, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
