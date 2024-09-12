/-  su=shrub-utils
|%
++  body-parser
  |_  [body=cord]
  ::  
  ++  title 
    ^-  tape
    =/  title=(unit manx)  get-title
    ?~  title  ""
    v:(head a.g:(head c:(need title))) 
  ::
  ++  get-title  ::  get's only title 
    ^-  (unit manx)
    =/  tag  "<title>"
    ?~  (fand tag (trip body))  ~
    =/  ix-start=@ud  (head (fand tag (trip body)))
    =/  half-way  (oust [0 ix-start] (trip body))
    =/  close-tag=tape  (into tag 1 '/')
    =/  lent-tag  (lent close-tag)
    =/  ix-end=@ud  (add lent-tag (head (fand close-tag half-way)))
    %-  de-xml:html
    %-  crip
    %+  oust  [ix-end (sub (lent half-way) ix-end)] 
    half-way
  ::
  ++  metadata
    ^-  (map @tas tape)
    =/  ix-start=(list @ud)  (fand "<meta" (trip body))
    %-  malt
    %+  skip
      %+  turn  ix-start 
      |=  ix=@ud
      =/  pair  (meta-tag ix)
      pair
    |=  pair=[@tas tape]
    =(%$ -.pair)
  ::
  ++  meta-tag
    |=  ix-start=@ud 
    ^-  [@tas tape]
    =/  half-way  (oust [0 ix-start] (trip body))
    =/  ix-end=@ud  +((head (fand ">" half-way)))
    =/  xml=(unit manx)
      %-  de-xml:html
      %-  crip
      %-  close-meta
      %-  clean-meta
      %+  oust  [ix-end (sub (lent half-way) ix-end)] 
      half-way
    ?~  xml  [%$ ""]
    =/  manx-map  (malt a.g:(need xml))
    =/  name  (parse-prop (~(get by manx-map) %name))
    =/  prop  (parse-prop (~(get by manx-map) %property))
    ?:  &(=(~ name) =(~ prop))  [%$ ""]
    ?~  name  
      [(need prop) `tape`(~(got by manx-map) %content)]
    [(need name) `tape`(~(got by manx-map) %content)]
  ::
  ++  parse-prop
  |=  u-tape=(unit tape)
    %+  rust
      ;;  tape  
      ?~  u-tape  ~
      (need u-tape)
    (perk ~[%'og:title' %'og:description' %'og:image' %description %'twitter:title' %'twitter:description' %'twitter:image'])
  ::
  ++  clean-meta 
    |=  meta=tape
    ^-  tape
    =/  =wall 
      %+  turn 
        ;;  wall  (scan meta ;~(plug (more pam (star ;~(pose (shim 31 37) (shim 39 255) gaq)))))
      |=  tap=tape
      ;;  tape
      %-  zing
      (scan tap (more gaq (star (shim 31 255))))
    ;;  tape  (zing wall)
  ::
  ::  closing meta-tag
  ::
  ++  close-meta
    |=  meta=tape
    =/  ix  (sub (lent meta) 2)
    ?:  =('/' (snag ix meta))  meta
    (into meta +(ix) '/')
  --
++  url-parser
  |=  =tape
  ;;  @tas  
  %-  crip 
  (oust [0 (sub (lent tape) 3)] tape)
::
++  txt-to-words
  |=  text=tape 
  ^-  (list tape)
  =/  =wall
    ;;  wall
    %+  scan  text
    ;~  plug 
      %+  more  ace
      (star ;~(pose (shim 33 255) (just `@`10)))
    ==
  ::
  ::~&  >  wall
  ::
  =/  words
  ;;  (list tape)
  %-  zing
  %+  turn  wall
  |=  t=tape
  ;;  (list tape)
  (scan t ;~(plug (more gaq (star ;~(pose (shim 33 255))))))
  ::
  ~&  >>  txt-parser/words
  words
  ::
  ++  get-url
  |=  text=tape
  ^-  [url=(unit tape) pith=(unit tape) txt=tape]
  =/  words  (txt-to-words text)
  ::
  ::  right now there is no new line gap accounted for we just cutting them out to parse text 
  ::  XX:  add logic for adding '/0a' spaces back into tape
  ::
  =/  skid-url
    %+  skid  words
    |=  t=tape
    =(~ (de-purl:html (crip t)))
  ::
  =/  skid-pith
    %+  skid  p.skid-url
    |=  t=tape
    =(~ (rust t stap))
  ::
  ::  XX:  for now takes only first url and first pith out of text
  ::
  =/  txt=tape  (zing (join " " p.skid-url))
  ?~  q.skid-pith
    ?~  q.skid-url  [~ ~ txt]
    [(some (head q.skid-url)) ~ txt]
  =/  pith  (some (head q.skid-pith))
  ?~  q.skid-url  [~ pith txt]
  [(some (head q.skid-url)) pith txt]
  ::
  ++  get-pith
  |=  =cord
  ^-  (list pith)
  =/  words  (txt-to-words (trip cord))
  ~&  >  words/words
  =/  piths=(list tape)  
    %+  skip  words
    |=  t=tape
    =(~ (rust t stap))
  ~&  >>  piths/piths
  %+  turn  piths
  |=  =tape 
  ~&  >>>  (en-pith:su (crip tape))
  (en-pith:su (crip tape))
--