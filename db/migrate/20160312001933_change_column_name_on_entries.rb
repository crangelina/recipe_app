class ChangeColumnNameOnEntries < ActiveRecord::Migration
  def change
    rename_column :entries, :tag, :meal_type
  end
end
