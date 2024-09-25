/@  home
/-  oxy=oxygen
/-  feather-icons
/-  serv=sky-server
/-  su=shrub-utils
/*  feather-intro
/*  diary
/*  counter
/*  tasks
/*  messenger
/*  introduction
/*  developer-environment-setup
/*  axal
^-  kook:neo
|%
++  state  pro/%home
++  poke  (sy %home %eyre-task ~)
++  kids
  :-  ~
  :-  %y
  %-  ~(gas by *lads:neo)
  :~
    :-  [|/%tas &]
    [any/~ ~]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  =<
  |_  [=bowl:neo =aeon:neo =pail:neo]
  +*  web  ~(. +> [bowl pail])
  ++  init
    |=  old=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :_  home/!>(*home)
    :~  [#/[p/our.bowl]/home/diary %make %diary ~ ~]
        [#/[p/our.bowl]/home/tasks %make %task `task/!>(['' | & ~]) ~]
        [#/[p/our.bowl]/home/sail %make %sail `sail/!>(['# hello world' 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/accel %make %accel ~ ~]
        [#/[p/our.bowl]/home/circle %make %circle ~ ~]
        [#/[p/our.bowl]/home/files %make %folder ~ ~]
        [#/[p/our.bowl]/home/planner %make %planner ~ ~]
        [#/[p/our.bowl]/home/messenger %make %messenger ~ ~]
        [#/[p/our.bowl]/home/landscape %make %iframe `iframe/!>('/apps/landscape') ~]
      ::
        [#/[p/our.bowl]/home/docs %make %folder `folder/!>([%introduction %tutorials %guides ~]) ~]
        [#/[p/our.bowl]/home/docs/introduction %make %sail `sail/!>([introduction 'prose p-page mw-page ma' ~]) ~]
      ::
        [#/[p/our.bowl]/home/docs/tutorials %make %folder `folder/!>([%counter %diary %messenger %tasks ~]) ~]
        [#/[p/our.bowl]/home/docs/tutorials/counter %make %sail `sail/!>([counter 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/tutorials/diary %make %sail `sail/!>([diary 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/tutorials/messenger %make %sail `sail/!>([messenger 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/tutorials/tasks %make %sail `sail/!>([tasks 'prose p-page mw-page ma' ~]) ~]
      ::
        [#/[p/our.bowl]/home/docs/guides %make %folder `folder/!>([%development %feather %axal-core ~]) ~]
        [#/[p/our.bowl]/home/docs/guides/development %make %sail `sail/!>([developer-environment-setup 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/guides/feather %make %sail `sail/!>([feather-intro 'prose p-page mw-page ma' ~]) ~]
        [#/[p/our.bowl]/home/docs/guides/axal-core %make %sail `sail/!>([axal 'prose p-page mw-page ma' ~]) ~]
      ::
        [#/[p/our.bowl]/sky/strategy/[p/our.bowl]/home %make %order `order/!>([#/hawk ~]) ~]
        (bind:oxy bowl)
    ==
  ++  poke
    |=  =pail:neo
    ^-  (quip card:neo pail:neo)
    ?+    p.pail  !!
        %home
      [~ pail]
        %eyre-task
      (handle:web !<(task:eyre:neo q.pail))
    ==
  --
  ::
  |_  [=bowl:neo =pail:neo]
  ++  handle
    |=  [eyre-id=@ta req=inbound-request:eyre]
    ^-  (quip card:neo pail:neo)
    :_  pail
    ?+    method.request.req  
        ~|(%unsupported-http-method !!)
    ::
        %'GET'
      =;  manx
        (respond:oxy [bowl eyre-id req manx])
      %~  render
        ui
      (pave:neo pax:(parse-url:oxy request.req))
    ::
        %'POST'
      %+  welp 
      (respond:oxy [bowl eyre-id req *manx])
      =;  poke
        [here.bowl %poke [%home !>(poke)]]~
      ^-  home
      =/  body  (parse-body:oxy request.req)
      =/  mu  ~(. manx-utils:oxy body)
      =/  head  (@tas (got:mu %head))
      ?>  ?=(%home head)
      =/  pith-marl
        %+  skim  pre-flatten:mu
          |=  =manx
          =((~(gut by (malt a.g.manx)) %name "") "pith")
      =/  order=(list pith)
        %+  turn  pith-marl 
        |=  m=manx
        (en-pith:su (~(vol manx-utils:oxy m) "pith"))
      order
    ==
  ::
  ++  ui
    |_  here=pith
    ++  render 
      ^-  manx
      ;html
        ;head 
          ;meta(charset "UTF-8");
          ;title:  home
          ;*  old-standard-head-tags:serv
          ;*  standard-head-tags:serv
          ;meta
            =name  "htmx-config"
            =content  (trip '{"ignoreTitle":"true"}')
            ;
          ==
        ==
        ;body
          =hx-ext  "dom-enc,response-targets"
          ;div.wf.hf.relative
            ;div.fc.g5.ma.mw-page.p-page
              ;+  apps
            ==
          ==
          ;+  script
        ==
      ==
    ::
    :: ++  id
    ::   ^-  tape
    ::   %-  zing
    ::   %+  turn  (pout (slag 1 here.bowl))
    ::   |=  smeg=@ta
    ::   %+  weld  "--"
    ::   (trip smeg)
    :: ::
    :: ++  indicator
    ::   ;div.absolute.hidden
    ::     =style  "top: 0px; right: 0px;"
    ::     ;div.loader.wfc.fc.p2.f2.s-2.mono.br2
    ::       =id  "indicator-{id}"
    ::       ;span.loaded(style "opacity: 0"): ---
    ::       ;span.loading
    ::         ;+  loading.feather-icons
    ::       ==
    ::     ==
    ::   ==
    ::
    ++  apps
      =/  home  !<(home q.pail)
      ^-  manx
      ;form.frw.g3.ac.jc.wfc.ma
        =hx-post  (en-tape:pith:neo here)
        =hx-swap       "none"
        =hx-include    "this"
        =head          "home"
        ;*
        =/  apps
          %+  welp
            apps.home
          %-  skip
          :_  |=  =pith
              (gth (lent pith) 1)
          %~  tap  in
          %-  %~  dif  in
              %~  key  by
              %~  tar  of:neo
              kids.bowl
          `(set pith)`(silt apps.home)
        %+  murn  apps
        |=  =pith
        ^-  (unit manx)
        ?~  pith  ~
        =/  =path  (pout (welp here.bowl pith))
        :-  ~
        ;div.relative.br2.tile
          =draggable  "true"
          =pith  (en-tape:pith:neo pith)
          ;input.hidden
            =name  "pith"
            =type  "text"
            =value  (en-tape:pith:neo pith)
            ;
          ==
          ;a.b1.br2.block.fc.as.js.hover.p3.s1.border-2.loader
            =style  "width: 160px; height: 160px;"
            :: =hx-target  "innerHTML"
            :: =hx-swap  "outerHTML"
            :: =hx-indicator  "this"
            =href  (trip (spat path))
            ;span.loaded: {(trip (snag 0 (pout:neo pith)))}
            ;span.loading.s2
              ;+  loading.feather-icons
            ==
          ==
          ;div.br2.b2.z1.f3.fc.wf.border-2
            =style  "position: absolute; bottom: 0; right: 0;"
            ;div.basis-full.tc.s-2.p1.hover.br2.dragger
              =type  "button"
              ; ...
            ==
          ==
        ==
        :: ;button
        ::   =type  "submit"
        ::   ;span:  submit
        :: ==
        :: ;input#order.hidden
        ::   =name  "order"
        ::   =type  "text"
        ::   ;
        :: ==
      ==
    ::
    ++  script 
    ;script
    ;+  ;/  %-  trip
      '''
      let draggedElement = null;
      let tiles = document.querySelectorAll('.tile')

      document.addEventListener('DOMContentLoaded', () => {
        tiles.forEach(tile => {

          tile.addEventListener('dragstart', event => {
            draggedElement = tile;
            event.dataTransfer.setData('text/plain', '')
            event.dataTransfer.effectAllowed = 'move';
          });

          tile.addEventListener('dragover', event => {
            event.preventDefault();
            event.dataTransfer.dropEffect = 'move';
          });

          tile.addEventListener('drop', event => {
            event.preventDefault();
            if (draggedElement) {
              const tempContent = tile.innerHTML;
              const tempPith = tile.getAttribute('pith');

              tile.innerHTML = draggedElement.innerHTML;
              tile.setAttribute('pith', draggedElement.getAttribute('pith'));
              draggedElement.innerHTML = tempContent;
              draggedElement.setAttribute('pith', tempPith);

              draggedElement = null;
              let form = document.querySelector('form');
              form.requestSubmit();
            }
          });

          tile.querySelector('.dragger').addEventListener('mousedown', event => {
            event.stopPropagation();
          });

          tile.querySelector('.dragger').addEventListener('dragstart', event => {
              event.stopPropagation();
          });
        })
      });
      '''
    ==
    --
  --
--
