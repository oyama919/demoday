class DictionaliesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dictionaly, only: [:show, :edit, :update, :destroy]

  def index
    @dictionalies = Dictionaly.all
  end

  def new
    if params[:back]
      @dictionaly = Dictionaly.new(dictionalies_params)
    else
      @dictionaly = Dictionaly.new
    end
  end

  def confirm
    @dictionaly = Dictionaly.new(dictionalies_params)
    render :new if @dictionaly.invalid?
  end

  def create
     @dictionaly = Dictionaly.new(dictionalies_params)
     @dictionaly.user_id = current_user.id
     if @dictionaly.save
       redirect_to dictionalies_path, notice: "ノートを作成しました"
     else
       render action: 'new'
     end
  end

  def edit
  end

  def update
    @dictionaly.update(dictionalies_params)
    redirect_to dictionalies_path, notice: "ノートを更新しました"
  end

  def destroy
    @dictionaly.destroy
    redirect_to dictionalies_path, notice: "ノートを削除しました"
  end
  def show
    # @comment = @dictionaly.comments.build
    # @comments = @dictionaly.comments
  end

  private
    def dictionalies_params
      params.require(:dictionaly).permit(:title, :content, :image)
    end
    def set_dictionaly
      @dictionaly = Dictionaly.find(params[:id])
    end
end
