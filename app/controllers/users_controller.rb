class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @scenes = Scene.where(user_id: @user.id).includes(:user, :comic)
  end
end
