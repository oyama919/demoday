class RemoveTitleToDictionalyCategory < ActiveRecord::Migration
  def change
    remove_column :dictionaly_categories, :title, :string
  end
end
