class AppointmentChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appointments"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
