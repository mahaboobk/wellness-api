class AppointmentChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appointments"
  end

  def receive(data)
    ActionCable.server.broadcast("appointments", {
      action: data['action'],
      data: data['data']
    })
  end
  
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
