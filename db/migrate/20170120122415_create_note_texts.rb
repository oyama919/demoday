class CreateNoteTexts < ActiveRecord::Migration
  def change
    create_table :note_texts do |t|
      t.text :text
      t.integer :note_id
      t.text :note_text_style
      t.timestamps null: false
    end
  end
end
