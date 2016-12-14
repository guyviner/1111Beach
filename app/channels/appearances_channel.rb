# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class AppearancesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    # broadcast action to all users that someone
    # push
    # pull action to alert currently present participants who is connected
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
