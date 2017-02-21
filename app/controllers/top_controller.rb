class TopController < ApplicationController
  def index
    @notes = Note.all
    @note_texts = NoteText.all
  end
end
