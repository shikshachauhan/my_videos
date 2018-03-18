class HomeController < ApplicationController

  def index
    @videos = Video.public_videos.page(params[:page]).per(5)
  end

end
