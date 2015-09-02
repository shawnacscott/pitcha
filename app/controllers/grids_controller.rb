class GridsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  
  def new
    @grid = Grid.new
  end

  def create
    @grid = current_user.grids.build(grid_params)
    if @grid.save
      flash.now[:success] = "Grid created!"
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  def show
    @grid = Grid.find(params[:id])
  end

  def destroy
  end

  private

    def grid_params
      params.require(:grid).permit(:title, :picture)
    end

    def correct_user
      @grid = current_user.grids.find_by(id: params[:id])
      redirect_to root_url if @grid.nil?
    end
end
