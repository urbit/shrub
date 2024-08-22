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
  :~  :^  %src  &  [pro/%tang (sy %tang ~)]
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
    manx/!>((render bowl))
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    ?+  sud  ~|(bad-stud/sud !!)
      ::
        %ui-event  ~|(%not-implemented !!)
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
      ==
      ;+  body
    ==
  ::
  ++  body
    ^-  manx
    ;body.prose
      ;pre
        ;+  printed
      ==
    ==
  ++  printed
    =/  tan=(unit tang)  tung
    ^-  manx
    ?@  tan  ;div;
    =/  =wall   (zing (turn u.tan |=(t=tank (~(win re t) [0 80]))))
    =/  =tape   (zing (join "\0a" wall))
    ;/(tape)
  ++  tung
    %-  (unit tang)
    %+  biff  (~(get by deps.bowl) %src)
    |=  src=(pair pith:neo lore:neo)
    %+  biff  (~(get of:neo q.src) /)
    |=  =idea:neo
    `!<(tang q.pail.idea)
  --
--
