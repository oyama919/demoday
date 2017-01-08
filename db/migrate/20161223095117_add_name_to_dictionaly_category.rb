class AddNameToDictionalyCategory < ActiveRecord::Migration
  def change
    add_column :dictionaly_categories, :name, :string
  end
end
