window.client = new Faye.Client('/faye')

client.addExtension {
  outgoing: (message, callback) ->
    message.ext = message.ext || {}
    message.ext.csrfToken = $('meta[name=csrf-token]').attr('content')
    callback(message)
}

jQuery ->
  $('#new_comment').submit ->
  $('#new_comment').val = '' 

  try
    client.unsubscribe '/profile'
  catch
    console?.log "Can't unsubscribe."

  client.subscribe '/comments', (payload) ->
    $('#comments').find('.media-list').prepend(payload.message) if payload.message