// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import '@doabit/semantic-ui-sass'
// import '@doabit/semantic-ui-sass/src/scss/semantic-ui.scss'

function scroll_bottom_messages() {
  if ($('#messages').length > 0) {
    $('#messages').scrollTop($('#messages')[0].scrollHeight)
  }
}

function submitMessage() {
  $('#message_body').on('keydown', function (e) {
    if (e.keyCode == 13 || e.keyCode == 0) {
      $('button').click()
      e.target.value = ""
    }
    else if ($('button').click())
      e.target.value = ""
  })
}




$(document).on("turbolinks:load", function () {
  $(".ui.dropdown").dropdown();
  $('.message .close').on('click', function () {
    $(this).closest('.message').transition('fade');
  });
  submitMessage();
  scroll_bottom_messages();

})


export default scroll_bottom_messages

Rails.start()
Turbolinks.start()
ActiveStorage.start()
