class HomesController < ApplicationController
  def top
    redirect_to user_path(current_user.id) if user_signed_in?
  end
end
