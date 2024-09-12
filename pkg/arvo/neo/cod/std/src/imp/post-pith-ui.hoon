/@  quote-post
/@  post
/-  serv=sky-server
/-  feather-icons
/-  manx-utils
/-  su=shrub-utils
/-  fp=feed-parser
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
      :-  [[%only %quote-post] ~]
      ~
  ==
++  form
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    =/  task  !<(task:eyre:neo q.pail)
    ?<  =(%rely stud)
      :_  pail
      (eyre-cards [bowl task])
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
    ;html.hf  
      ;head
        ;*  old-standard-head-tags:serv
        ;*  standard-head-tags:serv
      ==
      ;body.b2.hf
        =hx-ext  "dom-enc"
        ;main.ma.fc.g1
        =style  "max-height: 300px; box-sizing: border-box;"
          ;+  render-post
        ==  
      == 
    ==
  ++  render-post 
    =/  =lore:neo  q:(~(got by deps.bowl) %src)
    =/  idea=idea:neo  (~(got of:neo lore) /)
    =/  quote-post  !<(quote-post q.q.saga.idea)
    =/  text  (trip -.quote-post)
    =/  posts=(list post)  +.quote-post
    ;div.hf.fc.ac.p2.g1
      =style  "overflow: auto; font-size: calc(1rem + (300px - 1em) / 100);"
      ;p.grow.p2: {text}
      ;div
      ;*  
        %+  turn  posts 
        |=  p=post
        ;iframe.wf.bd2.post.br2.b2.grow
        =src  (en-tape:pith:neo (welp renderer.p pith.p))
        ;
        ==
      ==
    ==
  --
--