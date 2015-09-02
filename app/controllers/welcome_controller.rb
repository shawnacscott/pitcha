class WelcomeController < ApplicationController
  def index
    if logged_in?
      @grid  = current_user.grids.build
    end
    @public_feed_items = Grid.paginate(page: params[:page])
  end
end
