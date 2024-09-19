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
      ;div.fc.af.jc
        =style  "width: 100%; height: 100%; padding: 25px; background-color: white;"
        ;h2
          =style  "text-align: left; margin-bottom: 20px;"
          ;  Favorite Apps
        ==
        ;div.fr.jb
          ;div.br1
            =title  "Tlon"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; background-color: white; border: solid 0.5px black"
            ;img@"https://bootstrap.urbit.org/tlon.svg?v=1"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
          ;div.br1
            =title  "Hits"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; background-color: white; border: solid 0.5px black"
            ;img@"https://storage.googleapis.com/media.urbit.org/apps/%25hits-logo.png"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
          ;div.br1
            =title  "Common Blog"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; background-color: white; border: solid 0.5px black"
            ;img@"https://github.com/thecommons-urbit/blog/blob/main/assets/tile.png?raw=true"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
          ;div.br1
            =title  "Fund"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; background-color: white; border: solid 0.5px black"
            ;img@"https://sfo3.digitaloceanspaces.com/sarlev-sarsen/sarlev-sarsen/2024.4.29..23.58.31..2b02.0c49.ba5e.353f-IMG_4726.jpeg"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
          ;div.br1
            =title  "Radio"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; background-color: white; border: solid 0.5px black"
            ;img@"https://bwyl.nyc3.digitaloceanspaces.com/radio/radio.png"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
        ==
      ==
    ==
  --
--