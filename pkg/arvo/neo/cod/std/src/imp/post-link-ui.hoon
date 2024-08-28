/@  txt
/-  serv=sky-server
/-  feather-icons
/-  manx-utils
/-  su=shrub-utils
^-  kook:neo
=<
|%
++  state  pro/%eyre-task
++  poke   (sy %rely ~)
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
    ?+    stud  !!
        %rely
      :_  pail
      =/  task  !<(task:eyre:neo q.pail)
      (eyre-cards [bowl task])
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
      (eyre-cards [bowl task])
        :: %'POST'
    ::
    ==
  --
--
::
|%
++  eyre-cards
  |=  [=bowl:neo [eyre-id=@ta req=inbound-request:eyre]]
  =+  #/[p/our.bowl]/$/eyre
  :~  (head-card - eyre-id)
  ::
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
  ::
      (done-card - eyre-id)
      [here.bowl %cull ~]
      [here.bowl %tomb ~]
  ==
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
:: (alf or auri:de-purl:html)??
++  txt-parser
  |=  txt=tape 
  ^-  (unit tape)
  =/  =wall
    %+  scan  txt
    ;~  plug 
      %+  more  ace   ::gay instead of ace ???
      (star ;~(less (shim 33 255)))
    ==
  =/  wall-url
    %+  skip  wall
    |=  =tape
    =(~ (de-purl:html (crip tape)))
  ~&  >>  wall-url/wall-url
  ?~  wall-url  ~
  (some (head wall-url))
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
        ;main.ma.fc.g1.b2 ::.mw-page.p-page
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
  =/  url=(unit tape)  (txt-parser text)
  ~&  url
  ?~  url 
    (url-renderer %txt url text)
  =/  type=@tas  (parse-url (need url))
  (url-renderer type (need url) text)
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
    ;div.wf.fc.as.p2
      ;p: {text}
      ;div.b4.br1.p2: metadata will be here
    ==
    ::
    ++  txt-renderer
    ;div.wf.fc.as.p2
      ;p.grow: {text}
    ==
    ::
    ++  mp3-renderer
    ;div.wf.fc.as.p2
      ;p.grow: {text}
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
    ;div.wf.fc.as.p2
      ;p.grow: {text}
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
    ;div.wf.fc.as.p2
      ;p.grow: {text}
      ;img.grow.wf 
      =style  "height: 270px"
      =src    url
      ;
      ==
    ==
    --
  --
--