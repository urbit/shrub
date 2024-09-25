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
      ;div.fc.af.p2
        =style  "background-color: white; height: 100%; width: 100%;"
        ;h2:  My Links
        ;div.s0.fc.af
          =style  "margin-top: 10px;"
           ::  Farcaster
           ;div.br1.fr.js.ac
            ;div
              =style  "margin-right: 10px;"
              ;img@"https://www.google.com/s2/favicons?domain=warpcast.com";
            ==
            ;div
              =style  "text-decoration: underline; cursor: pointer; color: blue;"
              ;p: sampel-palnet.eth
            ==
          ==
          ::  GitHub
          ;div.br1.fr.js.ac
            ;div
              =style  "margin-right: 10px;"
              ;img@"https://www.google.com/s2/favicons?domain=github.com";
            ==
            ;div
              =style  "text-decoration: underline; cursor: pointer; color: blue;"
              ;p: sampel-palnet
            ==
          ==
          ::  X.com
          ;div.br1.fr.js.ac
            ;div
              =style  "margin-right: 10px;"
              ;img@"https://www.google.com/s2/favicons?domain=x.com";
            ==
            ;div
              =style  "text-decoration: underline; cursor: pointer; color: blue;"
              ;p: sampel-palnet
            ==
          ==
          ::  Instagram
          ;div.br1.fr.js.ac
            ;div
              =style  "margin-right: 10px;"
              ;img@"https://www.google.com/s2/favicons?domain=instagram.com";
            ==
            ;div
              =style  "text-decoration: underline; cursor: pointer; color: blue;"
              ;p: urbitofficial
            ==
          ==
        ==
      ==
    ==
  --
--
