/@  ford-desk
^-  kook:neo
|%
++  state  pro/%ford-desk
++  poke   (sy %gift ~)
++  kids   
  :+  ~  %z
  %-  ~(gas by *lads:neo)
  =/  mk  |=([=term f=?] `pish:neo`[&/term |/%tas f])
  :~  [(mk %src &) pro/%hoon ~]
      [(mk %out &) pro/%vase ~]
      [(mk %pre &) pro/%vase ~]
  ==
::
++  deps  *deps:neo
++  form
  ^-  form:neo
  =<
  |_  [=bowl:neo =aeon:neo stud:neo state-vase=vase]
  +*  run  ~(. +> [bowl ~ !<(ford-desk state-vase)])
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    =+  !<(=gift:neo vax)
    =+  !<(sta=ford-desk state-vase)
    =|  cards=(list card:neo)
    =/  gis  ~(tap of:neo gift)
    |-
    ?~  gis
      [cards ford-desk/!>(sta)]
    =/  [=pith:neo =loot:neo]  i.gis
    ?:  =(mode.loot %dif)
      $(gis t.gis)
    ?.  ?=([%src *] pith)
      $(gis t.gis)
    ?~  pop=(pith-to-prop t.pith)
      $(gis t.gis)
    ?-    mode.loot
        %dif  $(gis t.gis)
        %del  $(cards (welp cards (handle-del:run pith)), gis t.gis)
        %add
      =^  caz=(list card:neo)  sta
        (handle-add:run u.pop)
      $(cards (welp cards caz), gis t.gis)
    ==
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =+  !<(sta=ford-desk q:(need pal))
    :_  (need pal)
    ::
    ~&  kids/~(key by ~(tar of:neo kids.bowl))
    =-  ~&   (turn - |=(c=card:neo p.c))
        -
    %+  roll  ~(tap of:neo kids.bowl)
    |=  [[=pith:neo =idea:neo] out=(list card:neo)]
    ~&  pith/pith
    ?.  ?=([%src *] pith)
      out
    ~|  pith/pith
    ?~  pop=(pith-to-prop t.pith)
      out
    =^  caz=(list card:neo)  sta
      (~(handle-add run [bowl ~ sta]) u.pop)
    (welp out caz)
  --
  |_  [=bowl:neo cards=(list card:neo) sta=ford-desk]
  ++  abet  [(flop cards) sta]
  ++  emit  |=(=card:neo run(cards [card cards]))
  ++  run  .
  ++  handle-del
    |=  =pith:neo
    ^-  (list card:neo)
    :~  [(welp here.bowl out/pith) %cull ~]
        [(welp here.bowl pre/pith) %cull ~]
    ==
  ++  handle-add
    |=  =prop:neo
    ^-  (quip card:neo _sta)
    =<  abet
    (build-file prop)

  ::
  ++  build-file
    |=  =prop:neo 
    =/  pax  (prop-pith prop)
    =+  !<(src=@t q.pail:(~(got of:neo kids.bowl) src/pax))
    =/  =file:ford:neo
      ~|  parsing/pax
      (scan (trip src) (rein:ford:neo [our.bowl (tail (welp here.bowl pax))] sta))
    ::
    =.  run  (build-pros (turn pro.file tail))
    =.  run  (build-libs (turn lib.file tail))
    =.  run  (make-prelude pax file)
    =/  =conf:neo
      (~(gas by *conf:neo) [%sut (ours pre/pax)] ~)
    (ford-slap out/pax (welp here.bowl pre/pax) (welp here.bowl src/pax))
  ::
  ++  build-pros
    |=  pos=(list stud:neo)
    ^+  run
    ?~  pos
      run
    =/  pat  
      (~(path press:neo pro/i.pos) %src)
    ?>  ?=(^ pat)
    ?~  pop=(pith-to-prop t.pat)
      $(pos t.pos)
    =.  run  (build-file u.pop)
    $(pos t.pos)
  ::
  ++  build-libs
    |=  lis=(list stud:ford:neo)
    ^+  run
    ?~  lis
      run
    =/  pat  
      (~(path press:neo lib/i.lis) %src)
    ?>  ?=(^ pat)
    ?~  pop=(pith-to-prop t.pat)
      $(lis t.lis)
    =.  run  (build-file u.pop)
    $(lis t.lis)
  ::
  ++  ford-slap
    |=  [wer=pith sut=pith src=pith]
    %^  do-make  wer  %ford-slap
    `(~(gas by *conf:neo) sut/sut hoon/src ~)
  ::
  ++  ford-text
    |=  [wer=pith txt=pith]
    %^  do-make  wer  %ford-text
    `(~(gas by *conf:neo) txt/(ours txt) ~)
  ::
  ++  slop
    |=  [wer=pith a=pith b=pith]
    ~|  %ford-slop
    %^  do-make  wer  %ford-slop
    `(~(gas by *conf:neo) a/a b/b ~)
  ++  face
    |=  [wer=pith face=pith sut=pith]
    ~|  %ford-face
    %^  do-make  wer  %ford-face
    `(~(gas by *conf:neo) face/face sut/sut ~)
  ++  same
    |=  [wer=pith from=pith]
    ~|  ford-same/[wer from]
    %^  do-make  wer  %ford-same
    `(~(gas by *conf:neo) src/from ~)
  ++  ours
    |=  p=pith:neo  `pith:neo`[p/our.bowl p]
  ++  make-deps
    =|  idx=@ud
    |=  [pat=pith deps=(list [face=term =pith])]
    ~&  make-deps/deps
    ^+  run
    ?~  deps
      ~|  pat
      %+  same  (dif:pith:neo here.bowl pat)
      ?:  =(0 idx)
        #/[p/our.bowl]/out/reef
      (snoc pat ud/(dec idx))
    =/  wer=pith  (snoc pat ud/idx)
    =/  fac=pith  (snoc wer %face)
    =/  fav=pith  (dif:pith:neo (snoc fac %term) here.bowl)
    =.  run
      (do-make fav %term `term/!>(face.i.deps) ~)
    =.  run
      (face (dif:pith:neo fac here.bowl) (welp here.bowl fav) (ours pith.i.deps))
    =/  prev=pith
      ?:  =(idx 0)
        #/[p/our.bowl]/out/reef
      (snoc pat ud/(dec idx))
    =.  run
      (slop (dif:pith:neo wer here.bowl) fac prev)
    $(deps t.deps, idx +(idx))
  ++  file-to-deps
    |=  =file:ford:neo
    ^-  (list [term pith])
    %-  zing
    :~  (turn pro.file |=(p=pro:ford:neo [face.p (~(pith press:neo pro/stud.p) %out)]))
        (turn fil.file |=(f=fil:ford:neo [face.f (~(pith press:neo fil/stud.f) %out)]))
        (turn lib.file |=(l=lib:ford:neo [face.l (~(pith press:neo lib/stud.l) %out)]))
        (turn far.file |=(f=far:ford:neo [face.f (welp #/cod/grow (stud-to-pith:neo stud.f))]))
        (turn fal.file |=(f=fal:ford:neo [face.f (welp #/cod/grab (stud-to-pith:neo stud.f))]))
    ==
  ++  make-prelude
    |=  [pax=pith =file:ford:neo]
    ^+  run
    (make-deps (welp here.bowl pre/pax) (file-to-deps file))

  ::
  ++  do-make
    |=  [=pith:neo lib=term sta=(unit pail:neo) =conf:neo]
    ~&  make/[pith=pith lib=lib conf=conf]
    (emit (welp here.bowl pith) %make lib sta conf) ::
  ::
  ++  prop-pith
    |=  =prop:neo
    ^-  pith:neo
    /[p.prop]/[q.prop]
  ::
  ++  pith-to-prop
    |=  =road:neo
    ^-  (unit prop:neo)
    ?.  ?=([=tack:neo =mark ~] road)
      ~
    `[tack mark]:road
  ++  exists
    |=  =prop:neo
    ^-  ?
    (~(has of:neo kids.bowl) src/(prop-pith prop))
  ::
  ++  built
    |=  =prop:neo
    ^-  ?
    (~(has of:neo kids.bowl) src/(prop-pith prop))
  --

--
