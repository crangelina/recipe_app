class CreateNutritions < ActiveRecord::Migration
  def change
    create_table :nutritions do |t|
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fat
      t.references :subject, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
