class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
    @note_texts = NoteText.all
  end

  def new
    @old_note = Note.last
    if params[:back]
      @note = Note.new(notes_params)
    else
      @note = Note.new
      @note_text = @note.note_texts.build
    end
    render layout: 'note_edit'
  end

  def confirm
    @note = Note.new(notes_params)
    render :new if @note.invalid?
  end

  def create
    @note = Note.new(notes_params)
    @note.user_id = current_user.id
    if @note.save
      num = params[:note][:note_texts_attributes].size
      num.times do |n|
        @note_text = @note.note_texts.build(text: params[:note][:note_texts_attributes].to_a[n][1][:text])
        @note_text.save
        @note_text = @note.note_texts.build(text: params[:note][:note_texts_attributes].to_a[n][1][:note_texts_style])
        binding.pry
        @note_text.save
      end
      redirect_to new_note_path, notice: "ノートを更新しました"
    else
      render layout: 'new'
    end
  end

  def edit
    render layout: 'note_edit'
  end

  def update
    @note.update(notes_params)
    redirect_to notes_path, notice: "ノートを更新しました"
  end

  def destroy
    @note.destroy
    redirect_to notes_path, notice: "ノートを削除しました"
  end
  def show

  end

  private
    def notes_params
      params.require(:note).permit(:title)
    end

    def note_text_params
      params.require(:note_text).permit(:text,:note_id,:note_texts_style)
    end
    def set_note
      @note = Note.find(params[:id])
    end
end
