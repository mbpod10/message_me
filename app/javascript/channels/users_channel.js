import consumer from "./consumer"

consumer.subscriptions.create("UsersChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel

    if (data.login) {
      $('#users-container').append(data.user)
    }

    else if (data.logout) {
      $(`#user_${data.id}`).remove()
    }


  }
});
