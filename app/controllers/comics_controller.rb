class ComicsController < ApplicationController
  before_action :set_comics

  def index
  end

  def select
  end

  def set_comics
    @comics = Comic.all
  end
end
