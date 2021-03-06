App.appearances = App.cable.subscriptions.create "AppearancesChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  # received: (data) ->
    # Called when there's incoming data on the websocket for this channel

  received: (data) ->
    user = $(".user-#{data['user_id']}")
    user.toggleClass 'online', data['online']

  speak: (message) ->
    @perform 'speak', username: user
