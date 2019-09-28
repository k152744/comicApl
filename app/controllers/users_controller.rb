class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @scenes = Scene.where(user_id: @user.id).includes(:user, :comic)
  end

  def likes
    @user = User.find(params[:id])
    @likes = Like.where(user_id: @user.id).includes(:scene)
  end
end
