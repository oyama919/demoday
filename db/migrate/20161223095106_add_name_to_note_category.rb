class AddNameToNoteCategory < ActiveRecord::Migration
  def change
    add_column :note_categories, :name, :string
  end
end
