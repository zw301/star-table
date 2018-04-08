json.extract! @user, :id, :email, :first_name, :last_name, :phone_number

# json.user do
#   json.extract! @user, :id, :email, :first_name, :last_name, :phone_number
#   json.item_ids @user.reservations.pluck(:id)
# end
#
# json.reservations do
#   @user.reservations.each do |reservation|
#     json.set! reservation.id do
#       json.partial! 'api/reservations/reservation', reservation: reservation
#     end
#   end
# end

# json.extract! @user, :id, :email, :first_name, :last_name, :phone_number
# json.reservation_ids @user.reservations.pluck(:id)
#
#
# json.reservations @user.reservations do |reservation|
#     json.reservation_id reservation.id
#     json.extract! reservation, :time, :date, :seats
#     json.restaurant do
#       json.extract! reservation.restaurant, :id
#     end
# end
