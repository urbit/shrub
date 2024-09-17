/@  manx
/@  widget
/@  homepage
/@  ui-event
/-  su=shrub-utils
/-  feather-icons
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %rely %ui-event ~)
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^    %src
          &
        [pro/%homepage (sy %sig ~)]
      :+  ~  %y
      %-  ~(gas by *lads:neo)
      :~  :-  [|/%tas &/%widget |/%t |]
          [pro/%widget (sy %sig ~)]
      ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  =lore:neo
    q:(~(got by deps.bowl) %src)
    :-  ~
    manx/!>((render (get-render-data lore) bowl))
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    ?+  sud  ~|(bad-stud/sud !!)
      ::
        %ui-event
      ~&  >>  "got ui-event!"
      =/  eve  !<(ui-event vaz)
      =/  =lore:neo
      q:(~(got by deps.bowl) %src)
      =/  dat
      (get-render-data lore)
      ~&  >>  dat
      ~&  >>  eve
      :: ?>  =(path.eve [%click %increment ~])
      :: :_  pail
      :: :~  :-  p:(~(got by deps.bowl) %src)
      ::     [%poke [%number !>(+(dat))]]
      :: ==
      !!
    ::
        %rely
      ~&  >>  "got rely!"
      ~&  >>  p:(~(got by deps.bowl) %src)
      ~&  >>  (welp p:(~(got by deps.bowl) %src) #/default)
      =/  =lore:neo
      q:(~(got by deps.bowl) %src)
      :-  ~
      manx/!>((render (get-render-data lore) bowl))
    ==
  ::
  --
--
::
|%
::
+$  render-data
  $:  =homepage
      =bowl:neo
  ==
++  get-render-data
  |=  =lore:neo
  ^-  homepage
  =/  data  (get-vase-saga-by-pith lore ~)
  ?~  data
    ~_  leaf/"No data to render"
    !!
  !<(homepage (need data))
::
::  XX taken from another version of /lib/shrub-utils,
::     remove once that's merged
++  get-vase-saga-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  (unit vase)
  =/  idea=(unit idea:neo)  (~(get of:neo lore) pith)
  ?~  idea  ~
  `q.q.saga:(need idea)
::
++  render
  |_  render-data
  ::
  ++  $
    ^-  manx
    ;html
      ;head
        ;meta(charset "utf-8");
        ::  XX  page title should be user's @p
        ;title: ~sampel-palnet
        ;link
          =href  "/blue/blue-mime/{(scow %p our.bowl)}/static/feather"
          =rel  "stylesheet"
          ;
        ==
        ;link
          =href  "https://em-content.zobj.net/source/microsoft-teams/363/memo_1f4dd.png"
          =rel  "icon"
          ;
        ==
        ;script
          ;+  ;/
            %-  trip
            '''
            function setLoading(idStr) {
              let target = document.getElementById(idStr);
              target.classList.add('htmx-request');
            };
            function setLoaded(idStr) {
              let target = document.getElementById(idStr);
              target.classList.remove('htmx-request');
            };
            '''
        ==
      ==
      ;+  body
    ==
  ::
  ++  body
    ^-  manx
    ;body
      ;main.p-page.mw-page.ma.fc.g5
        ::  XX need to fix path
        ::     can't infer location of profile from pith.homepage alone
        ::     would have to build imp/homepage with "absolute path" of profile
        ;imp_mast-homepage-header: {(en-tape:pith:neo #/[p/our.bowl]/profiles/default)}
        ;+  widgets
      ==
    ==
  ++  widgets
    ^-  manx
    ::  widget grid
    ;div
      ::  XX grid-auto-rows assumes 626px width of container; fix this
      ::     either render a new grid with 1 column for smalle screens or
      ::     dynamically adjust the grid-auto-rows value to container width
      =style  "display: grid; grid-template-columns: repeat(3, 1fr); grid-gap: 20px; grid-auto-rows: calc((626px - 40px) / 3);"
      ;*  %+  turn
            widget-order.homepage
          |=  =pith:neo
          =/  widget
            !<  widget
            q.pail:(~(got by ~(tar of:neo (~(del of:neo q:(~(got by deps.bowl) %src)) /))) pith)
          ::  widget container
          ;div.br1
            =style  "overflow: hidden; grid-row: span {<rows.widget>}; grid-column: span {<columns.widget>};"
            ::  widget
            ;+  manx.widget
          ==
    ==
  :: ++  display-count
  ::   ^-  manx
  ::   ;p
  ::     =js-on-add  "setLoaded('inc-button'); console.log('added');"
  ::     ; {<number>}
  ::   ==
  :: ++  increment-count
  ::   ^-  manx
  ::   ;button.loader
  ::     =id           "inc-button"
  ::     =event        "/click/increment"
  ::     =js-on-event  "setLoading('inc-button');"
  ::     ;span.loaded:  Increment
  ::     ;span.loading
  ::       ;+  loading.feather-icons
  ::     ==
  ::   ==
  --
--