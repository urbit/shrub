/@  ui-event
^-  kook:neo
=<
|%
++  state  pro/%manx
++  poke   (sy %ui-event %rely %gift ~)
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^  %src  &  [any/~ ~]
      :+  ~  %y
      %-  ~(gas by *lads:neo)
      :~  [& [any/~ ~]]
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
    =/  dst  p:(~(got by deps.bowl) %src)
    ^-  (quip card:neo pail:neo)
    ?+  sud  ~|(bad-stud/sud !!)
        %ui-event  !!
    ::
        %rely
      `manx/!>((render bowl))
    ==
  --
--
::
|%
++  render
  |_  =bowl:neo
  ++  $
    ^-  manx
    =/  =iota  (rear p:(~(got by deps.bowl) %src))
    ;html
      ;head
        ;title: {(trip ?@(iota iota (scot iota)))}
        ;meta(name "renderer-suggestions", content "/tree");
        ;meta(name "renderer-label", content "folder");
        ;link
          =rel  "stylesheet"
          =href  "/blue/blue-mime/{(scow %p our.bowl)}/static/feather"
          ;
        ==
        ;link
          =rel  "icon"
          =href  "https://em-content.zobj.net/source/emojione/151/open-file-folder_1f4c2.png"
          ;
        ==
      ==
      ;body.fc.g2.p-page.mw-page.ma
        ;*
        %+  turn  rooms
        |=  =pith:neo
        =/  iota  (snag 0 pith)
        =/  tape  (trip ?@(iota iota (scot iota)))
        ;a.br1.b1.hover.p2
          =href  "/sky/~{(en-tape:pith:neo (welp dst pith))}"
          ;+  ;/
          ?:  =((lent pith) 1)  tape
          (en-tape:pith:neo pith)
        ==
      ==
    ==
  ++  dst  p:(~(got by deps.bowl) %src)
  ++  rooms
    ^-  (list pith:neo)
    =/  src  (~(got by deps.bowl) %src)
    %~  tap  in
    %~  key  by
    %~  tar  of:neo
    (~(del of:neo q.src) /)
  --
--
