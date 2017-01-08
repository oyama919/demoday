class Dictionaly < ActiveRecord::Base
  mount_uploader :image, ImageUploader  
  belongs_to :user
  belongs_to :dictionaly_category
end
