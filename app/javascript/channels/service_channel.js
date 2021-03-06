import consumer from "./consumer"

consumer.subscriptions.create("ServiceChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
      if (Notification.permission === 'granted') {
        var title = 'Nuevo Servicio'
        var body = data
        var options = { body: body }
        new Notification(title, options)
    }
  }
});

