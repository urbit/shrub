/*  feather
=>  |%
    ::
    ++  render-sail
      |=  dep=pith:neo
      ^-  manx
      ;html
        ;head
          ;meta(charset "utf-8");
          ;style: {(trip feather)}
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
        ;body
          ;imp_mast-diary-ui: {(en-tape:pith:neo dep)}
        ==
      ==
    ::
    --
::  ::  ::  ::  ::  ::  ::  ::  ::  ::
^-  kook:neo
|%
++  state  pro/%manx
++  poke   ~
++  kids   *kids:neo
++  deps
  ^-  deps:neo
  %-  my
  :~  :^  %src  &  [pro/%diary (sy %diary-diff ~)]
      :+  ~  %y
      %-  my
      :~  [[|/%da |] only/%txt ~]
      ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ::
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  src  (~(got by deps.bowl) %src)
    [~ manx/!>((render-sail p.src))]
  ::
  ++  poke
    |=  [sud=stud:neo vaz=vase]
    ^-  (quip card:neo pail:neo)
    [~ pail]
  ::
  --
--
