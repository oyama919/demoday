class DictionaliesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def dictionaly_params
      params.require(:user).permit(:name, :description, :image)
    end
end
