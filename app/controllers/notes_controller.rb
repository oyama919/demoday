class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
    if params[:back]
      @note = Note.new(notes_params)
    else
      @note = Note.new
    end
  end

  def confirm
    @note = Note.new(notes_params)
    render :new if @note.invalid?
  end

  def create
     @note = Note.new(notes_params)
     @note.user_id = current_user.id
     if @note.save
       redirect_to notes_path, notice: "ノートを作成しました"
     else
       render action: 'new'
     end
  end

  def edit
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
    # @comment = @note.comments.build
    # @comments = @note.comments
  end

  private
    def note_params
      params.require(:user).permit(:name, :description, :image)
    end
end
