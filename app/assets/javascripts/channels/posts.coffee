App.posts = App.cable.subscriptions.create "PostsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#posts").html(data.html)
      # $(".store #main").html(data.html).animate( 1000, () -> 
      #     console.log(data.id)
      #     $("#product_#{data.id}").css({'background-color':'#88ff88'}).animate({'background-color':'#fff'},1000);
      # )
    # Called when there's incoming data on the websocket for this channel
