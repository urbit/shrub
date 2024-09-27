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
          ;  Favorite Groups
        ==
        ;div.fr.jb
          ;div.br1
            =title  "UF"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; border: solid 0.5px black"
            ;img@"https://interstellar.nyc3.digitaloceanspaces.com/battus-datsun/2022.11.07..19.39.22-Sig.png"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
          ;div.br1
            =title  "Tlon Local"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; border: solid 0.5px black"
            ;img@"https://tlon.io/local-icon.svg"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
          ;div.br1
            =title  "Neo"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; border: solid 0.5px black"
            ;img@"https://ewr1.vultrobjects.com/urbit/hastuc-dibtux/2024.4.30..2.37.9..bae1.47ae.147a.e147-IMG_5592.jpeg"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
          ;div.br1
            =title  "Internet Weirdness Task Force"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; border: solid 0.5px black"
            ;img@"https://sfo3.digitaloceanspaces.com/iwtf-life7/litmus-ritten/2023.3.28..01.49.47-avatar-landscape-1-iwtf-b.png"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
          ;div.br1
            =title  "Valeria City"
            =style  "width: 80px; height: 80px; overflow: hidden; position: relative; border: solid 0.5px black"
            ;img@"https://nyc3.digitaloceanspaces.com/minderimages/minder-folden/2023.12.9..18.47.43..2189.374b.c6a7.ef9d-ValeriaLogo.png"(style "width: 80px; height: 80px; object-fit: cover; cursor: pointer;");
          ==
        ==
      ==
    ==
  --
--