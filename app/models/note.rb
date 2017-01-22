class Note < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :note_category
  has_many :note_texts
  accepts_nested_attributes_for :note_texts, allow_destroy: true
end
