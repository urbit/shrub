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
      ~&  >>  response-header.dat.res
      =/  body=cord  q.data.u.full-file.dat.res
      =/  title  ~(get-title parse-body body)
      =/  meta-data=manx  
          ;div.b4.br1.p2
            ;p: {title}
          ==
      ::~&  >>  img/(fand "og:image" (trip body))
      ::~&  dat.res
      ::~&  `@t`q.data.u.full-file.dat.res
      ::=/  =json  (need (de:json:html body))
      ::~&  >  body/(de-xml:html body)
      :_  pail
      ~
    ::   (eyre-cards [bowl task meta-data])
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
        ~&  >>  body
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
:: ++  data-card
::   |=  [=pith eyre-id=@ta]
::   :*  -
::       %poke
::       %eyre-sign
::       !>
::       :+  eyre-id
::         %data
::       :-  ~
::       %-  manx-to-octs
::       %~  render
::         web
::       :-  bowl
::       (pave:neo pax:(parse-url-frfr:serv request.req))
::   ==
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
  |=  text=tape 
  ^-  [(unit tape) tape]
  =/  =wall
    %+  scan  text
    ;~  plug 
      %+  more  ace
      (star ;~(less (shim 33 255)))
    ==
  =/  cell-wall
    %+  skid  wall
    |=  =tape
    =(~ (de-purl:html (crip tape)))
  =/  url-out=tape  (zing (join " " p.cell-wall))
  ?~  q.cell-wall  [~ url-out]
  [(some (head q.cell-wall)) url-out]
::
++  web
  |_  [=bowl:neo name=pith]
  ++  render
    ^-  manx
    ;html
      ;head
        ;*  old-standard-head-tags:serv
        ;*  standard-head-tags:serv
      ==
      ;body
        =hx-ext  "dom-enc"
        ;main.ma.fc.g1.b2.hf ::.mw-page.p-page
        =style  "padding: 0px 12px 10px;"
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
    ;div.wf.fc.as.p2.g1
      ;p.grow.p2: {text}
      ;div.b4.br1.p2
      =hx-post     (en-tape:pith:neo name)
      =head        "get-metadata"
      =hx-trigger  "load" 
      =value       url
      =hx-swap     "innerHTML"
        ;span: metadata will be here
      ==
    ==
    ::
    ++  txt-renderer
    ;div.wf.fc.as.p2
      ;p.grow: {text}
    ==
    ::
    ++  mp3-renderer
    ;div.wf.fc.as.p2.g1
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
    ;div.wf.fc.as.p2.g1
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
    ;div.wf.fc.as.p2.g1
      ;p.grow.p2: {text}
      ;img.grow.wf 
      =style  "height: 270px"
      =src    url
      ;
      ==
    ==
    --
  --
::
++  parse-body
|_  [body=cord]
::  getting title manualy put of html string
  ++  get-title 
    ^-  tape
    =/  ix-start=@ud  (head (fand "<title>" (trip body)))
    =/  half-way  (oust [0 ix-start] (trip body))
    ::  adding 8 to account for losted "</title>" tag
    =/  ix-end=@ud  (add 8 (head (fand "</title>" half-way)))
    =/  title=(unit manx)
      %-  de-xml:html
      %-  crip
      %+  oust  [ix-end (sub (lent half-way) ix-end)] 
      half-way
    ?~  title  ""
    v:(head a.g:(head c:(need title)))
--
--