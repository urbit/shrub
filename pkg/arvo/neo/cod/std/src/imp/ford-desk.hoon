=>
  |%
  ++  parse-file
    |=  [=pith:n txt=@t]
    ^-  file:ford:neo
    :: ~>  %memo./ford/desk
    :: %-  road  |.
    =/  parser  (rein:ford:neo pith)
    =/  res  (lily:n (trip txt) parser)
    ?:  ?=(%& -.res)
      p.res
    (mean leaf/"Failed parsing {(spud (pout pith))} [{(scow %ud p.p.res)} {(scow %ud q.p.res)}]" ~)
  ::
  ++  auto
    %-  ~(gas in *(set mark))
    :~  %txt
        %hoon
        %tape
        %cord
    ==
  ++  broken
    %-  ~(gas in *(set prop:n))
    :~  lib/%messages
        imp/%verb
    ==
    
  --
^-  kook:neo
|%
++  state  pro/%disk
++  poke   (sy %gift ~)
++  kids   
  :+  ~  %z
  %-  ~(gas by *lads:neo)
  =/  mk  |=(=term `pish:neo`[&/term &])
  :~  [(mk %src) pro/%hoon ~]
      [(mk %out) pro/%vase ~]
      [(mk %pre) pro/%vase ~]
  ==
++  deps  
  %-  ~(gas by *deps:neo)
  :~  :-  %reef
      ^-  fief:neo
       :-   &
       :_   ~
       [pro/%vase ~]
  ==
++  form
  ^-  form:neo
  =<
  |_  [=bowl:neo =aeon:neo =pail:neo]
  +*  run  ~(. +> [bowl ~ !<(disk:neo q.pail)])
      reef  ~(. qua:deps:u [%reef bowl `%vase])
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    =+  !<(=gift:neo vax)
    =+  !<(=disk:neo q.pail)
    =|  cards=(list card:neo)
    =/  gis  ~(tap of:neo gift)
    |-
    ?~  gis
      [cards pail]
    =/  [=pith:neo =loot:neo]  i.gis
    ?.  ?=([%src *] pith)
      $(gis t.gis)
    =/  =prop:neo  (pith-to-prop t.pith)
    ?-    mode.loot
        %dif  $(gis t.gis)
        %del  $(cards (welp cards (handle-del:run pith)), gis t.gis)
        %add
      =^  caz=(list card:neo)  disk
        (handle-add:run prop)
      $(cards (welp cards caz), gis t.gis)
    ==
  ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    =/  src  (~(dip of kids.bowl) /src)
    =.  pail  (need pal)
    =+  !<(=disk:neo q.pail)
    =/  ls  ~(tap of src)
    =/  cards=(list card:neo)
      %+  turn  ~(tap in auto) 
      |=  =mark
      ^-  card:neo
      :-  (welp here.bowl #/out/pro/[mark])
      =?  mark  =(mark %txt)
        %cord
      [%make %riff `vase/(slap vase:reef limb/mark) ~]
    |-
    ?~  ls 
      :: %-  print:(cards:etch cards)
      [cards disk/!>(sta)]
    =/  [=pith:neo =tale:neo]  i.ls
    =/  pop  (pith-to-prop-soft pith)
    ?~  pop  $(ls t.ls)
    =^  caz=(list card:neo)  sta
      abet:(build-file:run u.pop)
    $(cards (welp cards caz), ls t.ls)
  --
  |_  [=bowl:neo cards=(list card:neo) sta=disk:neo]
  +*  reef  ~(. qua:deps:u [%reef bowl `%vase])
  ++  abet  [(flop cards) sta]
  ++  emit  |=(=card:neo run(cards [card cards]))
  ++  run  .
  ++  handle-del
    |=  =road:neo
    ^-  (list card:neo)
    ?.  ?=([%src =tack:neo =mark ~] road)
      ?<  ?=([?(%out %pre) *] road)
      ~
    =/  =pith:n  (prop-pith tack.road mark.road)
    :~  [(welp here.bowl out/pith) %cull ~]
        [(welp here.bowl pre/pith) %cull ~]
    ==
  ++  handle-add
    |=  =prop:neo
    ^-  (quip card:neo _sta)
    abet:(build-file prop)
  ++  file
    |_  =prop:neo
    ++  here  (welp here.bowl src/pith)
    ++  pith  (prop-pith prop)
    ++  is-auto  &(=(p.prop %pro) (~(has in auto) q.prop))
    ++  parsed  `file:ford:n`(parse-file here src)
    ++  src
      !<(@t q.q:(~(got of:neo kids.bowl) src/pith))
    --
  ++  build-file
    |=  =prop:neo
    ^+  run
    =*  fil  ~(. file prop)
    ?:  (~(has in broken) prop)
      (emit out/pith:fil %make %riff `vase/!>(~) ~)
    ?:  &(=(p.prop %pro) is-auto:fil)
      run
    =.  run  (build-prelude prop)
    (do-slap prop)
  ++  build-files
    |=  pop=(list prop:n)
    ?~  pop  run
    $(run (build-file i.pop), pop t.pop)
  ++  import-to-props
    |=  [=tack:n imports=(list [face=term =stud:n])]
    %+  murn  imports
    |=  [fac=term =stud:neo]
    ?.  (~(has-stud floppy:n sta) stud)
      ~
    `[tack ?@(stud stud mark.stud)]
  ::
  ++  build-prelude
    |=  =prop:neo
    ^+  run
    =/  fil=file:ford:n  ~(parsed file prop)
    =.  run  (build-files (import-to-props %pro pro.fil))
    =.  run  (build-files (import-to-props %lib lib.fil))
    (make-prelude prop fil)
  ++  do-slap
    |=  =prop:neo
    =*  fil  ~(. file prop)
    %^  do-make  (welp here.bowl out/pith:fil)  %ford-slap
    `(~(gas by *conf:neo) sut/(welp here.bowl pre/pith:fil) hoon/(ours (welp here.bowl src/pith:fil)) ~)
  ++  make-deps
    =|  idx=@ud
    |=  [=prop:n deps=(list [face=term =pith:n])]
    =/  pat=pith:n  (welp here.bowl pre/(prop-pith prop))
    ^+  run
    ?~  deps
      %+  same  pat
      ?:  =(0 idx)  pith:reef
      `pith:n`(snoc pat ud/(dec idx))
    =/  wer=pith:n  (snoc pat ud/idx)
    =/  fac=pith:n  (snoc wer %face)
    =/  fav=pith:n  (snoc fac %term)
    =.  run  (do-make fav %term `term/!>(face.i.deps) ~)
    =.  run  (face fac fav pith.i.deps)
    =/  prev=pith:n
      ?:  =(idx 0)  pith:reef
      (snoc pat ud/(dec idx))
    =.  run  (slop wer fac prev)
    $(deps t.deps, idx +(idx))
  ++  make-prelude
    |=  [=prop:n =file:ford:neo]
    (make-deps prop (file-to-deps file))
  ::
  ++  build-pros
    |=  pos=(list stud:neo)
    ^+  run
    ?~  pos  run
    ?.  (~(has-stud floppy:n sta) i.pos)
      $(pos t.pos)
    =.  run  (build-file %pro ?@(i.pos i.pos mark.i.pos))
    $(pos t.pos)
  ::
  ++  do-make
    |=  [=pith:neo lib=term sta=(unit pail:neo) =conf:neo]
    (emit pith %make lib sta conf)
  ::
  ++  ford-slap
    |=  [wer=pith sut=pith src=pith]
    %^  do-make  wer  %ford-slap
    `(~(gas by *conf:neo) sut/(ours sut) hoon/(ours src) ~)
  ::
  ++  slop
    |=  [wer=pith a=pith b=pith]
    %^  do-make  wer  %ford-slop
    `(~(gas by *conf:neo) a/a b/b ~)
  ++  face
    |=  [wer=pith face=pith sut=pith]
    %^  do-make  wer  %ford-face
    `(~(gas by *conf:neo) face/face sut/sut ~)
  ++  same
    |=  [wer=pith from=pith]
    %^  do-make  wer  %ford-same
    `(~(gas by *conf:neo) src/from ~)
  ++  ours
    |=  p=pith:neo  p  :: `pith:neo`[p/our.bowl p]
  ++  file-to-deps
    |=  =file:ford:neo
    ^-  (list [term pith])
    %+  welp
      (turn pro.file |=(p=pro:ford:neo [face.p (~(pith press:neo pro/stud.p) %out)]))
    (turn lib.file |=(l=lib:ford:neo [face.l (~(pith press:n lib/stud.l) %out)]))
  ::
  ++  prop-pith
    |=  =prop:neo
    ^-  pith:neo
    /[p.prop]/[q.prop]
  ::
  ++  pith-to-prop
    |=  =road:neo
    (need (pith-to-prop-soft road))
  ::
  ++  pith-to-prop-soft
    |=  =road:neo
    ^-  (unit prop:neo)
    ?.  ?=([=tack:neo =mark ~] road)
      ~
    `[tack mark]:road
  --
--
