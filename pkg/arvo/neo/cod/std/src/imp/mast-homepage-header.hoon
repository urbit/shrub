/@  sig
:: /@  jpg
:: /@  png
/@  txt
/@  url
/@  ui-event
/@  hexadecimal
:: /-  feather-icons
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
        [pro/%sig (sy %sig ~)]
      :+  ~  %z
      %-  ~(gas by *lads:neo)
      :~  :-  [&/%profile-image |]
          :: [or/~[pro/%jpg pro/%png] (sy %sig ~)]
          [pro/%txt (sy %sig ~)]
          :-  [&/%header-image |]
          :: [or/~[pro/%jpg pro/%png] (sy %sig ~)]
          [pro/%txt (sy %sig ~)]
          :-  [&/%sigil-color |]
          [pro/%hexadecimal (sy %sig ~)]
          :-  [&/%sigil-background-color |]
          [pro/%hexadecimal (sy %sig ~)]
          :-  [&/%display-name |]
          [pro/%txt (sy %sig ~)]
          :: :-  [&/%organization |]
          :: [pro/%pith (sy %sig ~)]
          :-  [&/%url |]
          [pro/%url (sy %sig ~)]
          ::  XX should limit to 256 characters
          ::     seems like an acceptable general-purpose
          ::     length for a global bio; if you really want
          ::     to write an autobiography do it in a widget
          :-  [&/%about |]
          [pro/%txt (sy %sig ~)]
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
      !!
      :: =/  =lore:neo
      :: q:(~(got by deps.bowl) %src)
      :: =/  dat
      :: (get-render-data lore)
      :: ~&  >>  dat
      :: ~&  >>  eve
      :: ?>  =(path.eve [%click %increment ~])
      :: :_  pail
      :: :~  :-  p:(~(got by deps.bowl) %src)
      ::     [%poke [%number !>(+(dat))]]
      :: ==
    ::
        %rely
      ::~&  >>  "got rely!"
      :: ~&  >>  !<  cord
      ::         q.pail:(~(got by ~(tar of:neo q:(~(got by deps.bowl) %src))) #/display-name)
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
      ;+  body
    ==
  ::
  ++  body
    ^-  manx
    ;body
      ;main.mw-page.ma.fc.g5
        ;div
          =style  "padding: 30px 0px 0px 0px;"
          ;div.mw-page.ma
            ;+  header-image
            ;div
              =style  "display: grid; grid-template-columns: repeat(3, 1fr); column-gap: 20px; grid-auto-rows: auto;"
              ;+  profile-image
              ;div.fr.mw-page
                =style  "grid-column: span 2;"
                ;div.fc.grow.g1
                  ;+  name
                  ;+  urbit-id
                  ;+  about
                ==
              ==
            ==
          ==
        ==
      ==
    ==
  ::
  ++  name
    ^-  manx
    =/  display-name
      (~(get by ~(tar of:neo q:(~(got by deps.bowl) %src))) #/display-name)
    ?~  display-name
      ;span.s4.f0.bold
        ;  {(scow %p (tail (head here.bowl)))}
      ==
    ;span.s4.f0.bold
      ;  {(trip !<(cord q.pail.u.display-name))}
    ==
  ::
  ++  urbit-id
    ^-  manx
    =/  display-name
      (~(get by ~(tar of:neo q:(~(got by deps.bowl) %src))) #/display-name)
    ?~  display-name
      ;div;
    ?:  =((trip !<(cord q.pail.u.display-name)) (scow %p (tail (head here.bowl))))
      ;div;
    ;span.s-1.f2
      ;  {(scow %p (tail (head here.bowl)))}
    ==
  ::
  ++  about
    ^-  manx
    =/  about
      (~(get by ~(tar of:neo q:(~(got by deps.bowl) %src))) #/about)
    ?~  about
      ;div;
    ;span.f1.s0
      =style  "max-height: 175px; overflow: hidden;"
      ;  {(trip !<(cord q.pail:(~(got by ~(tar of:neo q:(~(got by deps.bowl) %src))) #/about)))}
    ==
  ::
  ++  profile-image
    ^-  manx
    =/  profile-image
      (~(get by ~(tar of:neo q:(~(got by deps.bowl) %src))) #/profile-image)
    ?~  profile-image
      ::  XX generate a sigil w/ background if there's no profile pic
      ::     need to fill this space with something to fill grid structure
      ;div.fr.js
        =style  "grid-column: span 1; aspect-ratio: 1 / 1; width: 100%;"
        ;div.fc.ac.br1
          =style  "overflow: hidden; width: 100%; height: 100%;"
          ;img@"https://ewr1.vultrobjects.com/urbit/hastuc-dibtux/2024.4.30..2.37.9..bae1.47ae.147a.e147-IMG_5592.jpeg"(style "width: 100%; height: 100%; object-fit: cover;");
        ==
      ==
    ;div.fr.js
      =style  "grid-column: span 1; aspect-ratio: 1 / 1; width: 100%;"
      ;div.fc.ac.br1
        =style  "overflow: hidden; width: 100%; height: 100%;"
        ;img@"{(trip !<(cord q.pail.u.profile-image))}"(style "width: 100%; height: 100%; object-fit: cover;");
      ==
    ==
  ::
  ++  header-image
  ^-  manx
  =/  header-image
    (~(get by ~(tar of:neo q:(~(got by deps.bowl) %src))) #/header-image)
  ?~  header-image
    ;div;
  ;div.wf.br1.fr.ac.jc
    =style  "width: 100%; max-height: 300px; margin-bottom: 20px; overflow: hidden;"
    ;img(src (trip !<(cord q.pail.u.header-image)));
  ==
  --
--
