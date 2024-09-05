/@  txt
/-  serv=sky-server
/-  feather-icons
/-  manx-utils
/-  su=shrub-utils
^-  kook:neo
=<
|%
++  state  pro/%eyre-task
++  poke   (sy %rely %iris-res ~)
++  kids  *kids:neo
++  deps  
  %-  ~(gas by *band:neo)
  :~  :-  %src
      :-  req=&
      :-  [[%only %txt] ~]
      ~
  ==
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    =/  task  !<(task:eyre:neo q.pail)
    ?+    stud  !!
        %iris-res
      =+  !<(=res:iris:neo vax)
      ?.  ?=(%finished -.dat.res)
        [~ pail]
      ?~  full-file.dat.res
        [~ pail]
      :: ~&  >>>  hand.res
      =/  body=cord  q.data.u.full-file.dat.res
      =/  title  ~(title parse-body body)
      ~&  title
      =/  meta-map  ~(get-metadata parse-body body)
      ~&  >  meta-map
      =/  meta-data=manx  (meta-div meta-map title)
      :_  pail
      (eyre-cards [bowl task meta-data])
    ::
        %rely
      :_  pail
      (eyre-cards [bowl task *manx])
    ==
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  [=stud:neo =vase]  (need pal)
    =+  !<(=task:eyre:neo vase)
    =/  [eyre-id=@ta req=inbound-request:eyre]  task
    ?+    method.request.req  ~|(%unsupported-http-method !!)
        %'GET'
      :_  [stud vase]
      (eyre-cards [bowl task *manx])
      ::
        %'POST'
      =/  here  p:(~(got by deps.bowl) %src)
      =/  body  (parse-body:serv request.req)
      =/  mu  ~(. manx-utils body)
      =/  head  (@tas (got:mu %head))
      ?+    head  !!
          %get-metadata
        =/  url  (got:mu %value)
        =/  =request:http
          :*  %'GET'
              url
              ['Accept'^'application/json' ~]
              ~
          ==
        =/  =req:iris:neo  [here.bowl request]
        :_  [stud vase]
        :~
          [#/[p/our.bowl]/$/iris %poke iris-req/!>(req)]
        ==
      ==
    ::
    ==
  --
--
::
|%
++  eyre-cards
  |=  [=bowl:neo [eyre-id=@ta req=inbound-request:eyre] max=manx]
  =/  data=sign:eyre:neo  [eyre-id %data `(manx-to-octs max)]  
  =+  #/[p/our.bowl]/$/eyre
  :~  (head-card - eyre-id)
  ::
  ?:  =(*manx max)  
      :*  -
      %poke
      %eyre-sign
      !>
      :+  eyre-id
        %data
      :-  ~
      %-  manx-to-octs
      %~  render
        web
      :-  bowl
      (pave:neo pax:(parse-url-frfr:serv request.req))
      ==
    [- %poke eyre-sign/!>(data)]
  ::
    (done-card - eyre-id)
    [here.bowl %cull ~]
    [here.bowl %tomb ~]
  ==
::
::
++  head-card
  |=  [=pith eyre-id=@ta]
  :*  pith
      %poke
      %eyre-sign
      !>
      :^    eyre-id
          %head
        200
      ['content-type' 'text/html']~
  ==
::
++  done-card
  |=  [=pith eyre-id=@ta]
  [pith %poke eyre-sign/!>([eyre-id %done ~])]
::
++  manx-to-octs
  |=  man=manx
  (as-octt:mimes:html (en-xml:html man))
::
++  parse-url
  |=  =tape
  ;;  @tas  
  %-  crip 
  (oust [0 (sub (lent tape) 3)] tape)
::
++  txt-parser
::  include breaks '\0a' in parser
  |=  text=tape 
  ^-  [(unit tape) tape]
  =/  =wall
    ;;  wall
    %+  scan  text
    ;~  plug 
      %+  more  ace
      (star ;~(pose (shim 33 255) gaq))
    ==
  =/  cell-wall
    %+  skid  wall
    |=  t=tape
    =/  no-gaq
      %-  head
      ;;  (list tape)
      (scan t ;~(plug (more gaq (star ;~(pose (shim 33 255))))))
    =(~ (de-purl:html (crip no-gaq)))
  =/  url-out=tape  (zing (join " " p.cell-wall))
  ?~  q.cell-wall  [~ url-out]
  [(some (head q.cell-wall)) url-out]
::
++  web
  |_  [=bowl:neo name=pith]
  ++  render
    ^-  manx
    ;html.hf  ::.scroll-hidden
      ;head
        ;*  old-standard-head-tags:serv
        ;*  standard-head-tags:serv
      ==
      ;body.b2.hf  ::.scroll-hidden
        =hx-ext  "dom-enc"
        ;main.ma.fc.g1
        =style  "max-height: 300px; box-sizing: border-box;"
          ;+  post-txt
        ==  
      == 
    ==
  ++  post-txt
  =/  =lore:neo  q:(~(got by deps.bowl) %src)
  =/  idea=idea:neo  (~(got of:neo lore) /)
  =/  txt  !<(txt q.q.saga.idea)
  =/  text=tape  (trip txt)
  =/  parsed=[(unit tape) tape]  (txt-parser text)
  ?~  -.parsed 
    (url-renderer %txt -.parsed text)
  =/  url  (need -.parsed)
  =/  type=@tas  (parse-url url)
  (url-renderer type url +.parsed)
  ::
  ++  url-renderer
  |_  [type=@tas url=tape text=tape]
    ++  $
    ?+  type  fetch-metadata
    %txt  txt-renderer
    %mp3  mp3-renderer
    %mp4  mp4-renderer
    %png  img-renderer
    %jpg  img-renderer
    %gif  img-renderer
    ==
    ++  fetch-metadata
    ;div.fc.as.p2.g1.hf.wf
    =style  "overflow: auto; font-size: calc(1rem + (300px - 1em) / 100);"
      ;div
        ;+  
        ?:  =("" text)  ;div;
        ;p.grow.p2: {text}
      ==
      ;a.b4.br1.p2.wf
      =href  url
      =target  "_blank"
        ;div  ::.b4.br1.p2
        =hx-post     (en-tape:pith:neo name)
        =head        "get-metadata"
        =hx-trigger  "load" 
        =value       url
        =hx-swap     "innerHTML"
          ;
        ==
        ;p.s-1.mono.f2
        =style  "overflow-wrap: break-word;"
        ; {url}
        ==
      ==
    ==
    ::
    ++  txt-renderer
    ;div.hf.fc.as.p4.wf    
    =style  "overflow: auto; font-size: calc(1rem + (300px - 1em) / 100);"
      ;p.grow: {text}
    ==
    ::
    ++  mp3-renderer
    ;div.wf.hf.fc.as.p2.g1
    =style  "overflow: auto; font-size: calc(1rem + (300px - 1em) / 100);"
      ;p.grow.p2: {text}
      ;audio
      =controls  ""
        ;source
        =src  url
        =type  "audio/mpeg"
        ;
        ==
        ;span: not supported
      ==
    ==
    ++  mp4-renderer
    ;div.wf.hf.fc.as.p2.g1
    =style  "overflow: auto; font-size: calc(1rem + (300px - 1em) / 100);"
      ;p.grow.p2: {text}
      ;video.wf
      ::=width  "320"
      =height  "240"
      =controls  ""
        ;source
        =src  url
        =type  "video/mp4"
        ;
        ==
        ;span:  not supported
      ==
    ==
    ++  img-renderer  
    ;div.hf.fc.ac.p2.g1  ::.wf
    =style  "overflow: auto; font-size: calc(1rem + (300px - 1em) / 100);"
      ;div.fc.as.wf
        ;p.grow.p2: {text}
      ==
      ;img.grow
      =style  "max-height: 270px"
      =src    url
      ;
      ==
    ==
    --
  --
::
++  meta-div 
  |=  [meta-map=(map @tas tape) title=tape]
  =/  img-style 
    """
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 100%;
    height: 100%;
    object-fit: cover
    """
  =/  img-wrap  
    """
    width: 150px; 
    height: 150px; 
    overflow: hidden;
    position: relative;
    """
  =/  meta  ~(. by meta-map)
  ^-  manx
  ;div.wf.fr.g1  ::.b4.br1.p2.wf
    ;+
    ?:  &(=(~ (get:meta %'og:image')) =(~ (get:meta %'twitter:image')))
      ;div;
    ?.  =(~ (get:meta %'og:image'))
      ;div
      =style  img-wrap
        ;img
        =style  img-style
        =src  (got:meta %'og:image')
        ;
        ==
      ==
    ;div
    =style  img-wrap
      ;img
      =style  img-style
      =src  (got:meta %'twitter:image')
      ;
      ==
    ==
    ;div.fc
    =style  "flex: 1;"
      ;+ 
      ?:  &(=("" title) =(~ (get:meta %'og:title')) =("" (get:meta %'twitter:title')))
        ;div;
      ?.  =("" title)
        ;p.bold.p1: {title}
      ?.  =(~ (get:meta %'og:title'))
        ;p.bold.p1: {(got:meta %'og:title')}
      ;p.bold.p1: {(got:meta %'twitter:title')}
      ;+  
      ?:  &(=(~ (get:meta %description)) =(~ (get:meta %'og:description')) =(~ (get:meta %'twitter:description')))
        ;div;
      ?.  =(~ (get:meta %description))
        ;p.s-1.p1: {(length (got:meta %description))}
      ?.  =(~ (get:meta %'og:description'))
        ;p.s-1.p1: {(length (got:meta %'og:description'))}
      ;p.s-1.p1: {(length (got:meta %'twitter:description'))}
    ==
  ==
::
++  length
  |=  =tape
  ?.  (gth (lent tape) 360)  tape
  ~&  'in length too long'
  (welp (oust [360 (sub (lent tape) 360)] tape) "...")
::
++  parse-body
  |_  [body=cord]
  ::  getting title manualy put of html string
  ++  title 
    ^-  tape
    =/  title=(unit manx)  (get-title "<title>")
    ?~  title  ""
    v:(head a.g:(head c:(need title))) 
  ::
  ++  get-title  ::  get's only title 
    |=  tag=tape
    ^-  (unit manx)
    ?~  (fand tag (trip body))  ~
    =/  ix-start=@ud  (head (fand tag (trip body)))
    ~&  >>>  title-ix/ix-start
    =/  half-way  (oust [0 ix-start] (trip body))
    ::  adding 8 to account for losted "</title>" tag
    =/  close-tag=tape  (into tag 1 '/')
    =/  lent-tag  (lent close-tag)
    =/  ix-end=@ud  (add lent-tag (head (fand close-tag half-way)))
    ~&  >>>  :-  %end
              %+  oust  [ix-end (sub (lent half-way) ix-end)] 
              half-way
    %-  de-xml:html
    %-  crip
    %+  oust  [ix-end (sub (lent half-way) ix-end)] 
    half-way
  ::
  ::  need to parse tape till there's no meta tags left 
  ::  on each iteration get meta tag get it's name and if name correct 
  ::  store in a map (%name "data")
  ::
  ++  get-metadata
    ^-  (map @tas tape)
    =/  ix-start=(list @ud)  (fand "<meta" (trip body))
    %-  malt
    %+  skip
      %+  turn  ix-start 
      |=  ix=@ud
      =/  pair  (meta-tag ix)
      ::~&  >>  pair/pair
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
    ~&  >>  xml/xml
    =/  manx-map  (malt a.g:(need xml))
    =/  name  (parse-prop (~(get by manx-map) %name))
    =/  prop  (parse-prop (~(get by manx-map) %property))
    ~&  >>>  prop/prop
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
    ~&  >>  meta
    =/  =wall 
      %+  turn 
        ;;  wall  (scan meta ;~(plug (more pam (star ;~(pose (shim 31 37) (shim 39 255) gaq)))))
      |=  tap=tape
      ;;  tape
      %-  zing
      (scan tap (more gaq (star (shim 31 255))))
    ~&  >  meta-after/;;(tape (zing wall))
    ;;  tape  (zing wall)
  ::
  ::  closing meta-atg
  ++  close-meta
    |=  meta=tape
    =/  ix  (sub (lent meta) 2)
    ?:  =('/' (snag ix meta))  meta
    (into meta +(ix) '/')
  --
--