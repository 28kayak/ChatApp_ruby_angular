ready = ->
$("#new_message").on("ajax:complete", (event, data, status) ->
  $("#message_body").val("")# clear input text
	message = JSON.parse(data.responseText).message.body
  $(".messages ul").append("<li>#{message}</li>")
)
return 

$(document).ready(ready)
document.addEventListener("page: load", ready)
document.addEventListener("page: fetch", ready)
document.addEventListener("page: receive", ready)

