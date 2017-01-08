class AddImageToDictionalies < ActiveRecord::Migration
  def change
    add_column :dictionalies, :image, :string
  end
end
