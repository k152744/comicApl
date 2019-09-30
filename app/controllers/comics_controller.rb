class ComicsController < ApplicationController
  before_action :authenticate_user!

  def index
    @comics = Comic.all
  end

  def select
    @comics = Comic.all
  end

end
