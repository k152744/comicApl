class ComicsController < ApplicationController
  def index
    @comics = Comic.all.limit(4)
  end

end
