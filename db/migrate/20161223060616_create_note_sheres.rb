class CreateNoteSheres < ActiveRecord::Migration
  def change
    create_table :note_sheres do |t|
      t.text :content
      t.string :note_shere
      t.integer :user_id
      t.integer :note_id

      t.timestamps null: false
    end
  end
end
