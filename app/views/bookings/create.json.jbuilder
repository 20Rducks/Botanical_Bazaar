if @booking.persisted?
  json.form render(partial: "bookings/form", formats: :html, locals: {booking: Booking.new})
  json.inserted_item render(partial: "bookings/confirmation", formats: :html, locals: {booking: @booking})
else
  json.form render(partial: "bookings/form", formats: :html, locals: {plant: @booking.plant, booking: @booking})
end
