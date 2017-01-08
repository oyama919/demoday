class CreateDictionalies < ActiveRecord::Migration
  def change
    create_table :dictionalies do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :dictionaly_categoly_id

      t.timestamps null: false
    end
  end
end
