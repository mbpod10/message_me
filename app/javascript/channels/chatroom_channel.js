import consumer from "./consumer"
import scroll_bottom_messages from "../packs/application"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    if (data.mod_message) {
      $('#message-container').append(data.mod_message)
      scroll_bottom_messages()
    }
    if (data.delete_message) {
      $(`#message_${data.id}`).remove()
    }
  }
});
