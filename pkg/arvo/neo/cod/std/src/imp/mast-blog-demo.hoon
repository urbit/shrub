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
      ::  widget
      ;div.fc.js.af
        =style  "width: 100%; height: 100%; padding: 25px; background-color: white; overflow: hidden;"
        ;h2
          =style  "text-align: left; margin-bottom: 20px;"
          ;  Latest Blog Posts
        ==
        ;div.fr.jb
          =style  "flex-wrap: nowrap;"
          ;div.br1
            =class  "hover"
            =style  "width: 30%;"
            ;p.s2.bold:  Self Renderers
            ;p.s-1:  Backends sans frontends in Shrub-like systems.
          ==
          ;div.br1
            =class  "hover"
            =style  "width: 30%;"
            ;p.s2.bold:  De-Facto Protocols
            ;p.s-1:  Homointeractivity over monomorphized heteromorphisms.
          ==
          ;div.br1
            =class  "hover"
            =style  "width: 30%;"
            ;p.s2.bold:  Axal as Organization
            ;p.s-1:  What can a tree of ships do?
          ==
        ==
      ==
    ==
  --
--
