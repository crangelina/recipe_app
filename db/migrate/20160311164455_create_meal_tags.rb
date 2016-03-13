class CreateMealTags < ActiveRecord::Migration
  def change
    create_table :meal_tags do |t|
      t.references :meal, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
