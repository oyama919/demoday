class RemoveUserIdToNotecategory < ActiveRecord::Migration
  def change
    remove_column :note_categories, :user_id, :string
  end
end
