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
++  poke   (sy %ui-event %rely ~)
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
          [pro/%manx (sy %sig ~)]
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
        ;+  header
        ;+  widgets
      ==
    ==
  ::
  ++  header
    ^-  manx
    ;div.p-page
      ;div.mw-page.ma
        ::  header image
        ;div.wf.br1.fr.ac.jc
          =style  "width: 100%; max-height: 300px; overflow: hidden;"
          ;img@"https://ewr1.vultrobjects.com/urbit/hastuc-dibtux/2024.4.30..2.37.9..bae1.47ae.147a.e147-IMG_5592.jpeg"(style "width: 100%; height: auto; display: block;");
        ==
        ;div
          =style  "padding-left: 10px; padding-right: 10px;"
          ::  profile pic / sigil
          ::  XX what happens if this image isn't square?
          ::       a: nothing good, fix
          ::  XX fall back on a generated sigil if no pfp
          ::       either get sigil.js running on backend or
          ::       implement something like it in hoon
          ;div.fr.js
            ;div.fc.ac.br1
                =style  "overflow: hidden; max-height: 400px; max-width: 400px; position: relative; top: -20px;"
                ;img@"https://ewr1.vultrobjects.com/urbit/hastuc-dibtux/2024.4.30..2.37.9..bae1.47ae.147a.e147-IMG_5592.jpeg";
            ==
            ::  header text
            ;div.fr.mw-page.p2
              =style  "max-height: 400px;"
              ;div.fc.grow.p2.g1
                ::  name / username / @p
                ;span.s4.f0.bold
                  ;  John Doe
                ==
                ::  @p, conditionally rendered
                ;+  urbit-id
                ::  about
                ;span.f1.s0
                  =style  "max-height: 175px; overflow: hidden;"
                  ;  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed massa nisi, maximus eget quam id, aliquet rutrum eros. Fusce eget libero eu ipsum gravida posuere vel quis dolor. Aliquam tristique nisl non risus aliquet posuere. Suspendisse neque tortor, sagit
                ==
              ==
            ==
          ==
        ==
      ==
    ==
  ::
  ++  urbit-id
    ^-  manx
    ::  XX get display name from this page
    ?:  =('' 'John Doe')
      ;div;
    ;span.s-1.f2
       ;  ~sampel-palnet
    ==
  ++  widgets
    ^-  manx
    ;div
      =style  "border: 1px solid red; max-height: 1000px; overflow: hidden;"
      ;imp_mast-diary-ui: {(en-tape:pith:neo #/[p/our.bowl]/home/diary)}
    ==
    :: ~&  >>  %~  tap  in  %~  key  by  %-  %~  kid  of:neo  q:(~(got by deps.bowl) %src)  ~
    :: ;div
    ::   ;  foobar
    :: ==
    :: ;div
    ::   ;+  !<(manx (need (get-vase-saga-by-pith q:(~(got by deps.bowl) %src) ~[%default %widget %foobar])))
    :: ==
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