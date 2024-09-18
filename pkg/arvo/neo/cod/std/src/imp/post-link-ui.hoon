/@  txt
/-  serv=sky-server
/-  feather-icons
/-  manx-utils
/-  su=shrub-utils
/-  fp=feed-parser
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
      ::  XX  if url is broken poke post and make it just into txt
      =+  !<(=res:iris:neo vax)
      ?.  ?=(%finished -.dat.res)
        [~ pail]
      ?~  full-file.dat.res
        [~ pail]
      =/  body=cord  q.data.u.full-file.dat.res
      =/  title  ~(title body-parser:fp body)
      =/  meta-map  ~(metadata body-parser:fp body)
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
++  web
  |_  [=bowl:neo name=pith]
  ++  render
    ^-  manx
    ;html.hfc  
      ;head
        ;*  old-standard-head-tags:serv
        ;*  standard-head-tags:serv
      ==
      ;body.b2.hfc
      =style  "min-height: unset;"
      =hx-ext  "dom-enc"
        ;main.ma.fc.g1
          ;+  post-txt
        ==  
      == 
    ==
  ++  post-txt
  =/  =lore:neo  q:(~(got by deps.bowl) %src)
  =/  idea=idea:neo  (~(got of:neo lore) /)
  =/  txt  !<(txt q.q.saga.idea)
  =/  text=tape  (trip txt)
  =/  parsed=[url=(unit tape) txt=tape]
      (get-url:fp text)
  ?~  url.parsed  (url-renderer %txt url.parsed text)
  =/  url  (need url.parsed)
  =/  type=@tas  (url-parser:fp url)
  (url-renderer type url txt.parsed)
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
      ::
      ++  fetch-metadata
      ;div.fc.as.p2.g1.hf.wf
        ;div
          ;+  
          ?:  =("" text)  ;div;
          ;p.grow.p2: {text}
        ==
        ;a.b4.br1.p2.wf
        =style  "margin-bottom: 0.5rem;"
        =href  url
        =target  "_blank"
          ;div
          =hx-post     (en-tape:pith:neo name)
          =head        "get-metadata"
          =hx-trigger  "load" 
          =value       url
          =hx-swap     "innerHTML"
            ;
          ==
          ;p.s-1.mono.f2.p1
          =style  "overflow-wrap: break-word;"
          ; {url}
          ==
        ==
      ==
      ::
      ++  txt-renderer
      ;div.hfc.fc.as.p4.wf    
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
      ::
      ++  mp4-renderer
      ;div.wf.hf.fc.as.p2.g1
      =style  "overflow: auto; font-size: calc(1rem + (300px - 1em) / 100);"
        ;p.grow.p2: {text}
        ;video.wf
        =height  "230"
        =controls  ""
          ;source
          =src  url
          =type  "video/mp4"
          ;
          ==
          ;span:  not supported
        ==
      ==
      ::
      ++  img-renderer  
      ;div.hf.fc.ac.p2.g1
      =style  "overflow: auto; font-size: calc(1rem + (300px - 1em) / 100);"
        ;div.fc.as.wf
          ;p.grow.p2: {text}
        ==
        ;div.fr.jc.g1
          ;img.grow
          =style  "max-height: 230px"
          =src    url
          ;
          ==
        ==
      ==
    --
  --
::
++  meta-div 
  |=  [meta-map=(map @tas tape) title=tape]
  =/  meta  ~(. by meta-map)
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
    ?:  &(=(~ (get:meta %description)) =(~ (get:meta %'og:description')) =(~ (get:meta %'twitter:description')))
      """
      width: 80px; 
      height: 80px; 
      overflow: hidden;
      position: relative;
      """
    """
    width: 150px; 
    height: 150px; 
    overflow: hidden;
    position: relative;
    """
  ^-  manx
  ;div.wf.fr.g1
    ;+
    ?:  &(=(~ (get:meta %'og:image')) =(~ (get:meta %'twitter:image')))
      ;div;
    ?.  =(~ (get:meta %'og:image'))
      ;div
      =style  img-wrap
        ;img.p1
        =style  img-style
        =src  (got:meta %'og:image')
        ;
        ==
      ==
    ;div
    =style  img-wrap
      ;img.p1
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
  ?.  (gth (lent tape) 300)  tape
  (welp (oust [360 (sub (lent tape) 300)] tape) "...")
--