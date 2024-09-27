|%
::
+|  %types
::
++  default-ttl       ~s2419200
+$  content-encoding  ?(%'AES_GCM' %'AES_128_GCM')
+$  urgency           ?(%'VERY_LOW' %'LOW' %'NORMAL' %'HIGH')
::
+|  %helpers
::
++  generate-vapid-keys
  ^-  json
  ::  XX create ECDH key pair with prime256v1 curve
  ::  XX get pubkey (as buffer?)
  ::  XX get private key (as buffer?)
  ::  XX ensure private key buffer is 32 bytes long by padding if needed
  ::  XX ensure public key buffer is 65 bytes long by padding if needed
  ::  XX return keys encoded in url-safe base64
  !!
::
++  validate-vapid-subject
  |=  =tape
  ^+  tape
  ?:  ?|  =(lent tape 0)
          !=("http://" (scag 7 tape))
          !=("mailto:" (scag 7 tape))
          !=("https://" (scag 8 tape))
      ==
    ~|  "web-push: VAPID subject is not a URL or mailto: address: {<tape>}"
    !!
  ?:  =("http://" (scag 7 tape))
    ~|  "web-push: VAPID subject is not an HTTPS URL: {<tape>}"
    !!
  ?~  (de-purl:html tape)
    ~|  "web-push: VAPID subject is not a valid URL: {<tape>}"
    !!
  ?:  ?|  =("localhost" (scag 9 tape))
          =("http://localhost" (scag 16 tape))
      ==
    ~|  "web-push: VAPID subject points to localhost URL, which is unsupported by Apple's push notification server"
    !!
  tape
::
++  validate-vapid-pubkey
  |=  =tape
  ^+  tape
  ?:  =(lent tape 0)
    ~|  "web-push: no VAPID public key set"
    !!
  ::  XX ensure pubkey is a url-safe base64 encoded string
  ::  ?.  =(tape "{<()>}")
  tape
::
++  validate-vapid-privkey
  |=  =tape
  ^+  tape
  ::  XX ensure key exists
  ?:  =("" tape)
    ~|  "web-push: no VAPID private key provided"
    !!
  ::  XX ensure key is a url-safe base64 encoded string
  tape
::
++  get-vapid-headers
  ::  XX create types for these at the top of this lib?
  ::       yeah but wait till those are finalised
  |=  :*  audience=tape
          subject=tape
          pubkey=tape
          privkey=tape
          =content-encoding
          expiration=@dr
      ==
  ^-  json
  ?~  (de-purl:html audience)
    ~|  "web-push: VAPID audience must be a valid URL"
    !!
  ?.  (validate-vapid-subject subject)
    ~|  "web-push: invalid VAPID subject {<subject>}"
    !!
  ?.  (validate-vapid-pubkey pubkey)
    ~|  "web-push: invalid VAPID pubkey {<pubkey>}"
    !!
  ?.  (validate-vapid-privkey privkey)
    ~|  "web-push: invalid VAPID privkey {<privkey>}"
    !!
  ::  XX turn privkey into binary?
  ::  XX generate and sign JWT with ES256 algo (required)
  ::  XX return JSON
  :-  %o
  %-  malt
  :~  ~
  ==
::
++  encryption-helper
  |=  [p256dh=tape auth=tape payload=tape content-encoding=tape]
  ^-  json
  ::  XX verify a bunch of stuff, see EncryptionHelper.js
  ::  XX use aes-gcm to encrypt payload
  ::       looks like this has been removed from hoon.hoon?
  ::  XX return JSON object with encrypted payload text, salt (base64'd 128bit eny), and local public key
  !!
::
++  validate-base64
  ::  XX surely don't need this
  |=  =tape
  ^+  tape
  ::  XX validate url-safe base64
  tape
::
+|  %push-functions
::
::  XX naming, was setVapidDetails() but that was in imperative JS land
++  set-vapid-details
  |=  [subject=tape pubkey=tape privkey=tape]
  ^-  json
  ?:  ?|  =("" subject)
          =("" pubkey)
          =("" privkey)
      ==
    ~|  "web-push: must provide subject, public key, and private key"
    !!
  ::  XX use helpers to create and validate VAPID details
  !!
++  generate-request-details
  |=  [subscription=json payload=tape options=json]
  ^-  json
  ::  XX validate subscription keys (p256dh, auth)
  ::  if payload
    ::  XX validate payload
    ::  XX validate options
    ::  XX encrypt payload
    ::  XX apply headers with encrypted payload
  ::  if not
  ::  XX apply headers for no payload
  ::  XX apply vapid details
  ::  XX prepare headers for VAPID
  ::  XX return request-details json object
  !!
::
++  send-notification
  |=  [subscription=json payload=tape options=json]
  ^-  json
  ::  XX validate input
  ::  XX error if poorly configured
  =/  request-details=json  (generate-request-details subscription payload options)
  ::  XX construct http request
  ::  XX if there's a timeout in the request-details, specify that
  ::  XX send request with request-details
  ::  XX get the response
  ::  XX check the status code
  ::  XX if status code is not ok, throw error
  ::  XX otherwise, return json from the response
  !!
--