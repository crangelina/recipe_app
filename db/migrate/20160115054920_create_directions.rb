class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :step
      t.references :meal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
