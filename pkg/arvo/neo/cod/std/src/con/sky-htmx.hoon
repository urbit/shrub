/@  sky
/@  sky-settings
/-  sky-server
/*  s-k-y
/*  feather-settings
/*  wi-nd
/*  hawk-icon
:-  [%sky %$ %htmx]
|=  =sky
|=  =bowl:neo
^-  manx
|^
  =;  m
    %-  lift
    ?:  menu.sky  m
    m(a.g [[%closed ""] a.g.m])
  ^-  manx
  ;s-k-y
    =our  (scow %p our.bowl)
    =windows-open  "{<open.sky>}"
    ;
  ==
::
++  map-to-css-tape
  |=  m=(map @t @t)
  ^-  tape
  %-  zing
  %+  turn  ~(tap by m)
  |=  [key=@t val=@t]
  """
  --{(trip key)}: {(trip val)};
  """
++  icon-url
  ^~
  %-  trip
  %^    cat
      3
    'data:image/png;base64,'
  %-  ~(en base64:mimes:html & |)
  (as-octs:mimes:html hawk-icon)
++  favicon
  ^~
  =;  m  m(a.g [[%href icon-url] a.g.m])
  ^-  manx
  ;link
    =rel  "icon"
    =type  "image/png"
    ;
  ==
++  manifest-url
  ^~
  %-  trip
  %^    cat
      3
    'data:application/json;utf-8,'
  %-  en:json:html
  %-  pairs:enjs:format
  :~
    ['name' s+'sky']
    ['description' s+'an urbit namespace viewer']
    ['start_url' s+'http://localhost/neo/sky']  ::  XX
    ['display' s+'standalone']
    ['background_color' s+'black']
    ['theme_color' s+'black']
    :+  'icons'  %a
    :~
      %-  pairs:enjs:format
      :~
        ['src' s+(crip icon-url)]
        ['sizes' s+'196x196']
        ['type' s+'image/png']
      ==
    ==
  ==
++  manifest
  ^~
  =;  m  m(a.g [[%href manifest-url] a.g.m])
  ^-  manx
  ;link
    =rel  "manifest"
    ;
  ==
::
++  lift
  |=  in=manx
  ^-  manx
  ;html
    ;head
      ;meta(charset "UTF-8");
      ;title: s k y
      ;*  standard-head-tags.sky-server
      ;meta
        =name  "htmx-config"
        =content  (trip '{"ignoreTitle":"true"}')
        ;
      ==
      ;script
        ;+  ;/  %-  trip
        '''
        document.addEventListener('feather-changed', (e) => {
          e.detail.forEach(r => {
            document.documentElement.style
              .setProperty('--'+r.variable, `${r.value}${r.unit||''}`);
          })
          let windows = document.querySelectorAll('wi-nd');
          windows.forEach(w => {
            $(w).poke('set-feather-values', e.detail)
          })
          let rules = document.querySelector('s-k-y').currentFeatherRules;
          localStorage.setItem('feather-settings', JSON.stringify(rules));
        });
        let rules = JSON.parse(localStorage.getItem('feather-settings') || '[]');
        rules.forEach(r => {
          document.documentElement.style
            .setProperty('--'+r.variable, `${r.value}${r.unit||''}`);
        })
        window.addEventListener('resize', () => {
          $('s-k-y').attr('open', null);
        });
        window.addEventListener('message', function(event) {
          if (event.data?.messagetype == 'sky-poll-response') {
            let wid = event.data.wid;
            let here = event.data.here;
            let prefix = event.data.prefix;
            let wind = document.querySelector(`[wid='${wid}']`);
            if (wind) {
              $(wind).poke('iframe-moved', {here, prefix})
            }
          }
          else if (event.data?.messagetype == 'iframe-wants-feather') {
            let rules = document.querySelector('s-k-y').currentFeatherRules;
            let wid = event.data.wid;
            let wind = document.querySelector(`[wid='${wid}']`);
            if (wind) {
              $(wind).poke('set-feather-values', rules)
            }
          }
        });
        '''
      ==
<<<<<<< HEAD
      ;script: {(trip s-k-y)}
      ;script: {(trip feather-settings)}
      ;script: {(trip wi-nd)}
=======
      ;script: {(trip a-i-r)}
      ;script: {(trip date-now)}
<<<<<<< HEAD
      ::
      ::  set up push notifications for this browser
      ;script
        ;+  ;/  %-  trip
        '''
        const push = require('../fil/web-push.js')

        addEventListener('load', async () => {
            let sw = await navigator.serviceWorker.register('../fil/push-sw.js')
            console.log(sw)
            subscribeToNotifications()
        });

        async function subscribeToNotifications() {
            let sw = await navigator.serviceWorker.ready
            const vapidKeys = push.generateVAPIDKeys()
            let pushSubscriptionDetails = await sw.pushManager.subscribe({
                userVisibleOnly: true,
                applicationServerKey: `${vapidKeys.publicKey}`
            });

            sendSubscriptionToServer(pushSubscriptionDetails)

            // console.log(JSON.stringify(pushSubscriptionDetails))
        }

        function sendSubscriptionToServer(pushSubscriptionDetails) {
            document.getElementById('push-subscription-details').value =
              JSON.stringify(pushSubscriptionDetails)
            document.getElementById('subscription-form').submit()
        }
        '''
      ==
>>>>>>> 13d77f915b (Draft frontend code)
=======
>>>>>>> a9b223316b (Remove push notification stuff from sky-htmx)
      ;+  favicon
      ;+  manifest
    ==
    ;body
      =hx-ext  "dom-enc,response-targets,morph"
      =hx-swap  "outerHTML"
      =hx-boost  "true"
      =hx-history  "false"
      =hx-replace-url  "/neo/sky"
      =our  (scow %p our.bowl)
      ;+  in
<<<<<<< HEAD
=======
      ;+  eye
      ;+  menu-btn-style
      ;+  theme-style
<<<<<<< HEAD
      ;+  notifications-subscription
>>>>>>> 13d77f915b (Draft frontend code)
=======
>>>>>>> a9b223316b (Remove push notification stuff from sky-htmx)
    ==
  ==
--
