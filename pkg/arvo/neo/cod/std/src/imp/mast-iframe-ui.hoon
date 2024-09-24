/@  url
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %sig ~)
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^    %src
          &
        [pro/%url (sy %url ~)]
      ~
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    =/  =lore:neo
      q:(~(got by deps.bowl) %src)
    manx/!>((render (get-render-data lore) bowl))
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    :-  ~
    =/  =lore:neo
      q:(~(got by deps.bowl) %src)
    manx/!>((render (get-render-data lore) bowl))
  ::
  --
--
::
|%
::
+$  render-data
  $:  =url
      =bowl:neo
  ==
++  get-render-data
  |=  =lore:neo
  ^-  url
  =/  data  (get-vase-saga-by-pith lore ~)
  ?~  data
    ~_  leaf/"No data to render"
    !!
  !<(url (need data))
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
        ;title: {(scow %p (tail (head here.bowl)))}
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
      ;div
        ;iframe
          =width   "100%"
          =height  "100%"
          =style   "border: none;"
          =src     "{(trip url)}"
          ;
        ==
      ==
    ==
  --
--
