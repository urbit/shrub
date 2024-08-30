/@  manx
/@  ui-event
/-  su=shrub-utils
/-  feather-icons
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely ~)
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^    %src
          &
        [pro/%pith (sy %sig ~)]
      :+  ~  %y
      %-  ~(gas by *lads:neo)
      :~  :-  [&/%widget |/%t |]
          [pro/%manx (sy %rely %ui-event ~)]
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
  $:  =pith
      =bowl:neo
  ==
++  get-render-data
  |=  =lore:neo
  ^-  pith
  =/  data  (get-vase-saga-by-pith lore ~)
  ?~  data
    ~_  leaf/"No data to render"
    !!
  !<(pith (need data))
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
        ;title: counter
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
        ;+  header
        ;+  widgets
      ==
    ==
  ++  header
    ^-  manx
    ;div
      ;  foo
      ::  XX header image
      ::  XX profile pic / sigil
      ::  XX name(s) / display name / @p
      ::  XX conditionally render @p if this homepage displays any other name
      ::  XX about
    ==
  ++  widgets
    ^-  manx
    ;div
      ;  foo
      ::  XX render all widgets in homepage's kids
    ==
  ::
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