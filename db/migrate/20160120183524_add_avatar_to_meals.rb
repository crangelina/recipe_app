class AddAvatarToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :avatar, :string
  end
end
