class LikesController < ApplicationController
  before_action :authenticate_user!, {only: [:create, :destroy]}

  def create
    like = Like.new(
      user_id: current_user.id,
      scene_id: params[:scene_id]
    )
    if like.save
      redirect_to likes_user_path(current_user)
    else
      redirect_to root_path
    end
  end

  def destroy
    like = current_user.likes.find_by(scene_id: params[:scene_id])
    if like.destroy
      redirect_to likes_user_path(current_user)
    else
      redirect_to root_path
    end
  end
end
