class ServiceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "service_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
