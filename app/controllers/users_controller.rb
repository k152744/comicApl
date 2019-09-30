class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @scenes = Scene.where(user_id: @user.id).includes(:user, :comic).page(params[:page]).per(5)
  end

  def likes
    @user = User.find(params[:id])
    @likes = Like.where(user_id: @user.id).includes(:scene).page(params[:page]).per(5)
  end
end
