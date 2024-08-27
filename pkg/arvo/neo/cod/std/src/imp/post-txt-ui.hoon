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
        ;main.p-page.mw-page.ma.fc.g5
          ;+  post-txt
        ==  
      ==
    ==
  ++  post-txt
  =/  =lore:neo  q:(~(got by deps.bowl) %src)
  =/  idea=idea:neo  (~(got of:neo lore) /)
  =/  text  !<(txt q.q.saga.idea)
  ^-  manx
  ;div
    ;h2:  {(trip text)}
  ==
  --
--