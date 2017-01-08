class CreateDictionalyCategories < ActiveRecord::Migration
  def change
    create_table :dictionaly_categories do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
