class GridsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @grid = current_user.grids.build(grid_params)
    if @grid.save
      flash.now[:success] = "Grid created!"
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  def destroy
  end

  private

    def grid_params
      params.require(:grid).permit(:title)
    end

    def correct_user
      @grid = current_user.grids.find_by(id: params[:id])
      redirect_to root_url if @grid.nil?
    end
end
