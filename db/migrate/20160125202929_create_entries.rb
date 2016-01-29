class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :day
      t.string :tag
      t.references :meal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
