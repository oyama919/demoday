class Dictionaly < ActiveRecord::Base
  belongs_to :user
  belongs_to :dictionaly_category
end
