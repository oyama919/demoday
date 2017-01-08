class NoteCategory < ActiveRecord::Base
  has_many :notes
end
