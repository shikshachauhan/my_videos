class HomeController < ApplicationController

  def index
    @videos = Video.public_videos
  end

end
