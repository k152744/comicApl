class UsersController < ApplicationController
  before_action :set_user

  def show
    @scenes = Scene.where(user_id: @user.id).includes(:user, :comic).page(params[:page]).per(5)
  end

  def likes
    @likes = Like.where(user_id: @user.id).includes(:scene).page(params[:page]).per(5)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
