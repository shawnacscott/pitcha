class WelcomeController < ApplicationController
  def index
    if logged_in?
      @grid  = current_user.grids.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end
