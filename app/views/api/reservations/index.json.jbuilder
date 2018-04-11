# @reservations.each do |reservation|
#   json.set! reservation.id do
#     json.partial! '/api/reservations/reservation', reservation: reservation
#   end
# end


json.array! (@reservations.sort_by{|r| r[:date]}) do |reservation|
  json.partial! '/api/reservations/reservation', reservation: reservation
end
