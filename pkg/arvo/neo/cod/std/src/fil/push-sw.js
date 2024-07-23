self.addEventListener('push', function(e) {
  var options = {
    body: 'This notification was generated from a push!',
    icon: 'https://ewr1.vultrobjects.com/urbit/hastuc-dibtux/2024.4.30..2.37.9..bae1.47ae.147a.e147-IMG_5592.jpeg',
    vibrate: [100, 50, 100],
    data: {
      dateOfArrival: Date.now(),
      primaryKey: '2'
    }
  };
  e.waitUntil(
    self.registration.showNotification('Hello world!', options)
  );
});