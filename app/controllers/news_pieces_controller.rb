class NewsPiecesController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def new
    @restaurant = Restaurant.new # needed to instantiate the form_for
  end
  def create
    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to restaurant_path(@restaurant)
  end
  
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :rating, :address)
  end

end
