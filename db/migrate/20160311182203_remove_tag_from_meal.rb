class RemoveTagFromMeal < ActiveRecord::Migration
  def change
    remove_column :meals, :tag, :string
  end
end
