class ComicsController < ApplicationController
  def index
    @comics = Comic.all
  end

  def select
    @comics = Comic.all
  end

end
