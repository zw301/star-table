class Api::RestaurantsController < ApplicationController

  def index

    if params[:searchTerms]
      @restaurants = Restaurant.find_by_keyword(params[:searchTerms])
      if  @restaurants
        @restaurants
      else
        render json: ["No Restaurants Found"], status: 404
      end
    # else
    #   @restaurants = Restaurant.all
    end
    render :index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render :show
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.owner_id = current_user.id

    if @restaurant.save
      render :show
    else
      render json: @restaurant.errors.full_messages, status: 422
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
        :owner_id,
        :name,
        :address,
        :star,
        :city,
        :state,
        :zipcode,
        :phone_number,
        :open_time,
        :close_time,
        :cuisine,
        :description,
        :logo
      )
  end

end
