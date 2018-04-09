class Api::ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id

    if @reservation.save
      render '/api/reservations/show'
    else
      render json: @reservation.errors.full_messages, status: 422
    end
  end

  def index
    # @reservations = Reservation.all
    user = User.find_by(id: params[:userId])
     if user
       @reservations = user.reservations.order(:date)
     else
       render json: ["User not found"], status: 404
     end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    reservation = Reservation.find(params[:id])
    if reservation
      reservation.destroy
      render json: reservation
    else
      render json: ["Reservation doesn't exist"], status: 404
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :seats, :date, :time)
  end

end
