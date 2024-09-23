/@  sig
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %sig ~)
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    manx/!>((render ~ bowl))
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    :-  ~
    manx/!>((render ~ bowl))
  ::
  --
--
::
|%
::
+$  render-data
  $:  sig
      =bowl:neo
  ==
  ++  get-render-data
    |=  =lore:neo
    ^-  sig
    =/  data  (get-vase-saga-by-pith lore ~)
    ?~  data
      ~_  leaf/"No data to render"
      !!
    !<(sig (need data))
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
          =frameborder  "0"
          =scrolling    "no"
          =height       "100%"
          =width        "100%"
          =allow        "autoplay *; encrypted-media *;"
          =style        "border: none; background: transparent;"
          =src          "https://embed.music.apple.com/gb/album/philip-glass-einstein-on-the-beach/637056287"
          =sandbox      "allow-forms allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-top-navigation-by-user-activation"
          ;
        ==
      ==
    ==
  --
--
