class AddNoteToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :note, :string
  end
end
