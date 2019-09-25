class ScenesController < ApplicationController
  before_action :set_comic

  def index
    @scenes = @comic.scenes.limit(5).includes(:user)
  end

  def new
    @scene = Scene.new
  end

  def create
    @scene = @comic.scenes.new(scene_params)
    if @scene.save
      redirect_to comic_scenes_path(@scene)
    else
      render :new
    end
  end

  def show
    @scene = Scene.find(params[:id])
  end

  def edit
    @scene = Scene.find(params[:id])
  end

  def update
    if @scene.update(scene_params)
      redirect_to comic_scenes_path(@scene)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @scene.user_id
      if @scene.destroy
        redirect_to comic_scenes_path(@scene)
      else
        render :edit
      end
  end

  private

  def set_comic
    @comic = Comic.find(params[:group_id])
  end

  def scene_params
    params.require(:scene).permit(:title,:content).merge(user_id: current_user.id)
  end
end
