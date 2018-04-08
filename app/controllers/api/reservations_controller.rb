class Api::ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id

    if @reservation.save
      render '/api/reservations/show'
    else
      render json: {base: @reservation.errors.full_messages}, status: 422
    end
  end

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    render '/api/reservation/show'
  end


  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :seats, :date, :time)
  end
end
