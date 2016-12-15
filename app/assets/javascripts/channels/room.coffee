# jQuery(document).on 'turbolinks:load', ->
#   $messages = $('#messages')
#   if $('#messages').length > 0
#     messages_to_bottom = -> messages.scrollTop(messages.prop("scrollHeight"))
#
#     messages_to_bottom()

App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->

    # Called when the subscription is ready for use on the server
  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # console.log(data);
    $messages = $('#messages')
    $messages.prepend data
    # $messages.scrollTop $messages.prop('scrollHeight')
     # Called when there's incoming data on the websocket for this channel

  speak: (message) ->
    @perform 'speak', message: message

# $('#new_message').submit (e) ->
#       $this = $(this)
#       textarea = $this.find('#message_body')
#       if $.trim(textarea.val()).length > 1
#         App.global_chat.send_message textarea.val(), messages.data('chat-room-id')
#         textarea.val('')
#       e.preventDefault()
#       return false
# doesn't do anything ^^^^^
