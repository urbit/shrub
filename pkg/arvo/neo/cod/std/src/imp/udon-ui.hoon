/@  ui-event
/@  txt
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely %gift ~)
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^  %src  &  [pro/%txt (sy %txt ~)]
      :+  ~  %y
      %-  my
      :~
        [[&/%manx |] only/%manx ~]
        [[&/%tang |] only/%tang ~]
      ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    manx/!>((render bowl))
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    ?+  sud  ~|(bad-stud/sud !!)
      ::
        %ui-event
      =/  eve  !<(ui-event vaz)
      ?+  path.eve  ~|(missing-event-handler-for/path.eve !!)
        ::
          [%submit %diary-form ~]  !!
      ==
      ::
        %rely
      `manx/!>((render bowl))
      ::
    ==
  ::
  --
--
::
|%
++  render
  |_  =bowl:neo
  ::
  ++  $
    ^-  manx
    ;html
      ;head
        ;meta(charset "utf-8");
        ;title: diary
        ;link
          =href  "/blue/blue-mime/{(scow %p our.bowl)}/static/feather"
          =rel  "stylesheet"
          ;
        ==
        ;link
          =href  "https://em-content.zobj.net/source/microsoft/209/keyboard_2328.png"
          =rel  "icon"
          ;
        ==
        ;script
          ;+  ;/
            %-  trip
            '''
            console.log('ok');
            '''
        ==
      ==
      ;+  body
    ==
  ::
  ++  dst  p:(~(got by deps.bowl) %src)
  ++  body
    ^-  manx
    =/  t=(unit tang)  tung
    ;body
      ;main.p-page.mw-page.ma.fc.g5
        ;h1.bold.f-3: udon
        ::
        ;h2: manx
        ;+
        %+  fall  munx
        ;div: no manx
        ::
        ;h2: tung
        ;+  ?@  t  ;div;
        ;imp_tang-ui: {(en-tape:pith:neo (welp dst #/tang))}
      ==
    ==
  ++  tung
    ^-  (unit tang)
    %+  biff  (~(get by deps.bowl) %src)
    |=  src=(pair pith:neo lore:neo)
    %+  biff  (~(get of:neo q.src) #/tang)
    |=  =idea:neo
    `!<(tang q.pail.idea)
  ++  munx
    ^-  (unit manx)
    %+  biff  (~(get by deps.bowl) %src)
    |=  src=(pair pith:neo lore:neo)
    %+  biff  (~(get of:neo q.src) #/manx)
    |=  =idea:neo
    `!<(manx q.pail.idea)
  --
--
