class ComicsController < ApplicationController
  def index
    @comics = Comic.all.limit(4)
  end

  def select
    @comics = Comic.all.limit(4)
  end

end
