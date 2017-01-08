class CreateDictionalySheres < ActiveRecord::Migration
  def change
    create_table :dictionaly_sheres do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :dictionaly_id

      t.timestamps null: false
    end
  end
end
