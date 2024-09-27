/@  circle-diff
/@  circle
/@  ui-event
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely ~)
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^  %src  &  [pro/%circle (sy %circle-diff ~)]
      ~
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
      ::  ?>  =(path.eve [%click %increment ~])
      :_  pail
      ~
      ::  :~  :-  p:(~(got by deps.bowl) %src)
      ::      [%poke [%circle !>(+(dat))]]
      ::  ==
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
  $:  =circle
      =bowl:neo
  ==
++  get-render-data
  |=  =lore:neo
  ^-  circle
  =/  data  (get-vase-saga-by-pith lore ~)
  ?~  data
    !!
  !<(circle (need data))
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
        ;title: Circle 
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
      ;div.p3
        ;main.p2.mw-page.ma
          ;+  title
          ;+  new-entry-form
          ;+  friends-list
        == 
      ==
    ==
  ::
  ++  title
    ^-  manx
    ;div.fr.jc.ac.prose
      ;h1.tc.border.wfc.fr.jc.ac
        =style
          """
          width:100px;
          height:100px;
          border-radius:99%
          """
        ; circle
      ==
    ==
  ::
  ++  new-entry-form
    ^-  manx
    ;form.fr.jc.p3
      =onsubmit  "document.getElementById('ship').value = '';"
      ;input.border
        =id            "ship"
        =type          "text"
        =autocomplete  "off"
        =placeholder   "~sampel-palnet"
        =oninput       "this.setAttribute('value', this.value)"
        ;
      ==
      ;button.border.b1
        =type  "submit"
        ; add
      ==
    ==
  ::
  ++  friends-list
    ^-  manx
    ;div.fc.g2
      ;*
      %+  turn
        %+  murn
          ~(tap of:neo (~(del of:neo q:(~(got by deps.bowl) %src)) /))
        |=  [=road:neo *]
        ?.  ?=([[%p ship=@] *] road)
          ~
        `ship.road
      |=  =ship
      ^-  manx
      ;div.border.p2.mono.fr.jb
        ;div: {<ship>}
        ::  XX need to add logic for mast here
        ;button.b1.border.hover.br1:  x
      ==
    ==
  --
--
