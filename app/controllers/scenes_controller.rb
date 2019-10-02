class ScenesController < ApplicationController
  before_action :set_comic
  before_action :set_scene, only: [:edit, :update, :destroy]

  def index
    @scenes = @comic.scenes.includes(:user).page(params[:page]).per(5)
  end

  def new
    @scene = Scene.new
  end

  def create
    @scene = Scene.new(scene_params)
    if @scene.save
      redirect_to comic_scenes_path(@comic)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @scene.update(scene_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @scene.user_id
      if @scene.destroy
        redirect_to user_path(current_user)
      else
        render :edit
      end
    end
  end

  private

  def set_comic
    @comic = Comic.find(params[:comic_id])
  end

  def set_scene
    @scene = Scene.find(params[:id])
  end

  def scene_params
    params.require(:scene).permit(:title,:content,:image).merge(user_id: current_user.id,comic_id: @comic.id)
  end
end
