/@  timeline-diff
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
      :-  [pro/%timeline (sy %timeline-diff ~)]
      :+  ~  %z
      %-  ~(gas by *lads:neo)
      :~  :-  [|/%p |]
          [[%only %sig] ~]
          :-  [|/%p |/%da |]
          [[%only %post] ~]
      ==
  ==
::
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
        %'POST'
       =;  poke
       :_  [stud vase]
       :~  :+  p:(~(got by deps.bowl) %src)
             %poke
           [%timeline-diff !>(poke)]
       ==
      ^-  timeline-diff
      =/  body  (parse-body:serv request.req)
      =/  mu  ~(. manx-utils body)
      =/  head  (@tas (got:mu %head))
      ?+    head  !!
          %new-post
        =/  =cord  (vol:mu "post")
        =/  =pith
            !<  pith
            %+  slap  (slop !>(..zuse) !>(bowl))
            %-  ream  cord
        ~&  >>  pith/pith
        [%post pith]
      ==
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
++  get-all-feed-entries 
|=  =lore:neo
^-  (list pith)
=/  grandkids=(list pith)
  %+  skim  (kidz-at-pith:su / lore)
  |=  =pith
  (gth (lent pith) 1)
%+  sort  grandkids
|=  [a=pith b=pith]
  (gth ->:(tail a) ->:(tail b))
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
          ;+  post
          ;+  feed
          ;+  refresher
        ==
      ==
    ==
  ::
  ++  post 
  ;form
  =hx-post       (en-tape:pith:neo name)
  =hx-target     "closest .p-page"
  =hx-select     ".p-page"
  =hx-swap       "outerHTML"
  =head          "new-post"
    ;input 
    =type          "text"
    =placeholder   "pith"
    =name          "post"
    =oninput       "this.setAttribute('value', this.value)"
    =required      ""
    =autocomplete  "off"
    ;
    ==
    ;button.loader
      ;span.loaded: post
      ;span.loading
        ;+  loading.feather-icons
      ==
    ==
  ==
  ::
  ++  feed
  ;div
    ;*
    =/  =lore:neo  q:(~(got by deps.bowl) %src)
    %+  turn  (get-all-feed-entries lore)
    |=  =pith:neo
    ::(got-vase-saga-by-pith:su lore pith)
    =/  idea=idea:neo  (~(got of:neo lore) pith)
    =/  post  !<(pith:neo q.q.saga:idea)
    ;p:  {(en-tape:pith:neo post)}
  ==
  ::
  ++  refresher
  ;div
    =hx-get  (en-tape:pith:neo name)
    =hx-target     "#items"
    =hx-select     "#items"
    =hx-swap       "outerHTML"
    =hx-trigger    "every 10s"
    ;
  ==
  --
--
