class CreateNoteCategories < ActiveRecord::Migration
  def change
    create_table :note_categories do |t|
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
