class AppointmentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appointments"
  end
end
