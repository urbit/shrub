/-  neo
~%  %neo-three  ..part  ~
|%
++  neo  ^neo
++  n  neo
+$  case  @ud
++  of  of:neo
++  or  or:neo
++  u
  ~%  %u  ..u  ~
  |%
  ++  crew
    |%
    ++  mk
      |=  ls=(list [=term =pith:n])
      (~(gas by *crew:n) ls)
    ++  one
      |=  [=term =pith:n]
      ^-  crew:n
      %-  ~(gas by *crew:n)
      ~[term^pith]
    --
  ++  make
    |%
    ++  static
      |=  [=stud:n =pail:n]
      ^-  note:n
      [%make stud `pail ~]
    --
  ++  deps
    |%
    ++  qua
      |_  [=term =bowl:n sud=(unit stud:n)]
      ++  get  `(pair pith:n lore:n)`(~(got by deps.bowl) term)
      ++  lore  q:get
      ++  root  ~(rot of lore)
      ++  pail
        :: =-  ?>(|(?=(~ sud) =(p.- u.sud)) -)
        ^-  pail:n
        pail:root
      ++  vase  `^vase`q:pail
      ++  pith  p:get
      --
    --
  ++  is-parent
    ~/  %is-parent
    |=  [parent=pith:n kid=pith:n]
    ^-  ?
    ?~  parent  &
    ?~  kid     |
    ?.  =(i.parent i.kid)
      |
    $(parent t.parent, kid t.kid)
  --
::
++  t
  |%
  +$  gang
    $@  open=?  :: if 
    $%  [%chum =pith]
        [%shut =pith]
    ==
  +$  pail  pail:neo
  +$  ever  ever:neo
  ++  axal  axal:neo
  +$  zion  (axal fern)
  +$  over
    $:  =ever:neo
        code=vase
    ==
  +$  hunt  hunt:neo
  +$  saga  saga:neo
  +$  stud  stud:neo
  +$  chit  ~
  ++  bush
    |%
    ::  $move: IO with source
    ::
    +$  move  (pair pith card)
    ::  $card: addressed IO
    +$  card  (pair pith note)
    ::  $note: IO request at a location
    +$  note
      $~  [%cull ~]
      $%  [%poke =pail]
          [%cull ~]
          [%make code=stud init=(unit pail) xtra=pail]
          [%many cards=(list card)]
      ==
    --
  ++  fern
    =<  fern
    |%
    +$  task   (pair pith note)
    +$  note
      $%  [%bush =move:bush]
          [%hear =hunt]
          [%have =ship =chit]
          [%drip ~]
      ==
    +$  gift
      $%  [%meet =ship pact=(set stud)]  :: perform service discovery on ship
        ::
          [%hark =hunt]  :: listen to changes
        ::
          [%shun =hunt]  :: stop listening to changes
        ::
          [%note =pith =note] :: deliver external note
        ::
          [%drip ~]
        ::
          [%arvo hand=pith note=note-arvo]
      ==
    ++  step  
      |^  ,[=seed io=(list gift)]
      ++  merge
        :: ~/  %merge
        |=  [a=$ b=$]
        ^+  a
        %_  a
          seed  (~(uni of seed.a) seed.b)
          io    (welp io.a io.b)
        ==
      --
    +$  fern
      $:  code=vase
          anew=(axal ever)
          heed=(set hunt)
      ==
    +$  mien
      $:  our=@p
          pfix=pith
          now=@da 
          eny=@uvJ
          heed=(set hunt)
          =farm
      ==
    --
  ::
  +$  case  @ud
  ::  $data: resolved data in space
  +$  data  [=oath:neo =gang =pail:neo =poem:neo]
  ::  +dirt: Mapping from x case to datum
  ++  dirt  
    =<  dirt
    |%
    ++  on    ((^on case data) lte)
    +$  dirt  ((mop case data) lte)
    --
  ++  loam  (mip:neo (unit dirt))
  ::  $soil: pith to dirt
  +$  soil  (axal:neo loam)
  ::  $soul: shape of children
  ::
  +$  soul  (map pith @ud)
  ::  +body: Mapping from a dare case to shape of children
  ++  body 
    =<  body
    |%
    ++  on   ((^on case soul) lte)
    +$  body  ((mop case soul) lte)    
    --
  ::  $moss: mapping from path to children history
  +$  moss  (axal:neo body)
  ::  $mire: mapping from x case to dare cases
  ++  mire
    =<  mire
    |%
    ++  on    ((^on case (set case)) lte)
    ++  mire  ((mop case (set case)) lte)
    --
  +$  peat  (axal:neo mire)
  +$  farm
    $:  our=ship
        =soil
        exe=peat
        why=moss
        zed=moss
    ==
  +$  seed  (axal:neo note)
  +$  muck  (axal:neo tale:neo)
  +$  note 
    $%  [%grow cas=(unit (pair rift case)) =pail:neo =poem:neo]
        [%cull rif=(unit rift)]
    ==
  --
++  etch
  =>
    |%
    ++  split
      |=  [a=tape b=@ud]
      ^-  [tape tape]
      [(scag b a) (slag b a)]
    ++  stop  `@ud`2
    ++  cape  (pair @ud tape)
    --
  =|  ind=@ud
  =/  edg=@ud  80
  =|  res=(list cape)
  ~%  %etch  ..etch   ~
  |%
  ++  etch  .
  ++  abet  res
  ++  tang
    (flop `^tang`(turn res (cork tail (lead %leaf))))
  ++  print
    |-  ^+  same
    ?~  res
      same
    ~>  %slog.[p.i.res leaf/q.i.res]
    $(res t.res)
  ++  mean
    !.
    |-  ^+  !!
    ?~  res
      !!
    =/  tap  |.(leaf/q.i.res)
    ~>  %mean.tap
    $(res t.res)

  ++  cards
    |=  caz=(list card:n)
    ^+  etch
    ?~  caz
      etch
    $(etch (card i.caz), caz t.caz)
  ++  card
    |=  =card:n
    ^+  etch
      %+  print-ln-raw  1
      "{<-.q.card>} {(en-tape:pith:neo p.card)}"
::  ?+    -.q.card  !!
::      %cull  (print-ln "%cull")
::      %poke  (print-vase:(print-ln "%poke") q.pail.q.card)
::      %make  
::    =.  etch  (print-ln "%make {<stud.q.card>}")
::    =.  etch
::      (print-ln <conf.q.card>)
::    ?~  init.q.card
::      etch
::    (print-vase q.u.init.q.card)
::  ==
  ++  tab   etch(ind (add ind stop))
  ++  untab  etch(ind (sub ind stop))
  ++  print-vase
    |=  vax=vase
    ?:  (gth (met 3 (jam q.vax)) 1.000)
      (print-ln "too large to print")
    (print-tank (sell vax))
  ++  print-tank
    |=  a=tank
    =/  tan=wall  (~(win re a) [ind edg])
    |-  ^+  etch
    ?~  tan
      etch
    =.  res  (snoc res [0 i.tan])
    $(tan t.tan)
  ++  print-ln
    |=  a=tape
    (print-ln-raw 0 a)
  ::
  ++  print-ln-raw
    |=  [pri=@ud a=tape]
    ^+  etch
    =/  cap  (sub edg ind)
    ?:  (gth cap (lent a))
      =.  res  (snoc res [pri (welp `tape`(reap ind ' ') a)])
      etch
    |-  
    =/  [next=tape cont=tape]
      [(scag cap a) (slag cap a)]
    =.  etch  (print-ln next)
    ?:  =(cont ~)
      etch
    $(a cont)
  ++  seed
    |=  s=seed:fern:t
    =.  etch  (print-ln-raw 2 "Seed")
    =<  (print-ln-raw 2 "seed done")
    %+  roll  ~(aap of s)
    |=  [[=pith:neo =note:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
    ?-  -.note
      %grow  untab:(print-vase:tab:e q.pail.note)
      %cull  e
   ==
  ++  muck
    |=  m=muck:t
    =.  etch  (print-ln-raw 2 "muck")
    %+  roll  ~(aap of m)
    |=  [[=pith:neo =tale:neo] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
    untab:(print-vase:tab:e q.q.tale)
  ++  epic
    |=  p=epic:neo
    ?:  =(1 1)
      etch
    ~>  %slog.[2 leaf/"Epic"]
    =<  (print-ln-raw 2 "Done")
    %+  roll  ~(aap of p)
    |=  [[=pith:neo =saga:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
    untab:(print-vase:tab:e q.q.q.saga)
  ::
  ++  farm
    |=  f=farm:t
    ^+  etch
    %+  roll  ~(aap of soil.f)
    |=  [[=pith:neo l=loam:t] e=_etch]
    ^+  e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
    =.  e  (body:e %y (~(gut of why.f) pith *body:t))
    =.  e  (body:e %z (~(gut of zed.f) pith *body:t))
    (loam:e l)
  ::
  ++  body
    |=  [kind=?(%y %z) b=body:t]
    ^+  etch
    =/  [key=@ *]  (need (ram:on:body:t b))
    (print-ln "{<kind>} case {(scow %ud key)}")
  ++  loam-verb  `?`&
  ::
  ++  loam
    |=  l=loam:t
    ^+  etch
    =/  last  (need ~(last or l))
    =/  val   (~(got or l) k.last)
    =.  etch  (print-ln "Current rift: {(scow %ud k.last)}")
    =.  etch
      ?.  loam-verb
        ?~  val  (print-ln "No value at current rift, case {(scow %ud l.last)}")
        =.  etch  (print-ln "Versions starting at {(scow %ud l.last)}")
        untab:(dirt:tab u.val)
      %+  roll  ~(tap by l)
      |=  [[=span:neo dir=(unit dirt:t)] e=_etch]
      ?~  dir  (print-ln:e "No value at rift {(scow %ud k.span)}, case {(scow %ud l.span)}")
      =.  e  (print-ln:e "Versions starting at {(scow %ud l.span)}")
      untab:(dirt:tab:e u.dir)
    etch
  ++  dirt
    |=  d=dirt:t
    ^+  etch
    =<  -
    %^  (dip:on:dirt:t _etch)  d  etch
    |=  [e=_etch [case=@ud =data:t]]
    ^-  [(unit data:t) stop=? _e]
    :+  `data  stop=|
    =.  e  (print-ln:e "value for version: {(scow %ud case)}:")
    untab:(print-vase:tab:e q.pail.data)
  --
::
++  plow
  ~%  %plow  +>   ~
  |_  farm:t
  +*  farm  +<
  ++  scry
    ~/  %scry
    |=  [=hunt:neo =case]
    ^-  (unit epic:neo)
    :: =/  =name:neo  (de-pith:name:neo pith.hunt)
    =/  is-our=?  &
    ?+  care.hunt  ~ :: XX: wrong deal with abc
      %x  (read-x pith.hunt case)
      %y  (read-y pith.hunt case)
      %z  (read-z pith.hunt case)
    ==
  ++  lift
    ~/  %lift
    |=  =data:t
    ^-  saga:neo
    =/  =aeon:neo
      [*ever:neo oath.data]
    [aeon poem.data pail.data]
  ::
  ++  wrap
    ~/  %wrap
    =|  =epic:neo
    |=  ls=(list [=pith:neo =data:t])
    ^+  epic
    ?~  ls
      epic
    =/  =saga:neo  (lift data.i.ls)
    $(epic (~(put of epic) pith.i.ls saga), ls t.ls)
  ++  not-found
    ^-  (unit (unit saga:neo))
    [~ ~]
  ++  mystery
    ^-  (unit (unit saga:neo))
    ~
  ++  read-x
    ~/  %read-x
    |=  [p=pith:neo =case]
    ^-  (unit epic:neo)
    =/  res  (read-x-raw p case)
    ?-  res
      ~         ~
      [~ ~]    `*epic:neo
      [~ ~ *]  `(~(put of *epic:neo) / u.u.res)
    ==
  ++  read-x-raw
    ~/  %read-x-raw
    |=  [pit=pith:neo cas=@ud]
    ^-  (unit (unit saga:neo))
    ?~  lom=(~(get of soil) pit)
      mystery
    ?~  dir=(~(wit or u.lom) cas)
      mystery
    ?~  u.dir
      not-found
    ?^  ver=(get:on:dirt:t u.u.dir cas)
      ``(lift u.ver)
    ?~  lat=(ram:on:dirt:t u.u.dir)
      ~
    ?:  (lte cas key.u.lat)
      not-found
    ~
  ::
  ++  read-y
    ~/  %read-y
    |=  [p=pith:neo =case]
    ^-  (unit epic:neo)
    ::  /foo/bar <- pith.hunt
    ::  /foo  <- pith
    ::  /foo/bar/baz
    =/  [=pith:n bod=(unit body:t)]
      (~(fit of why) p)
    ?~  bod
      ~
    =/  pfix  (dif:pith:n p pith)
    ?~  sol=(get:on:body:t u.bod case)
      ~
    :-  ~
    =-  (~(dip of -) pfix)
    %-  ~(gas of *epic:neo)
    %+  murn  ~(tap by u.sol)
    |=  [kid=pith:neo cas=@ud]
    =.  kid  (welp pfix kid)
    ?~  res=(need (read-x-raw kid cas))
      ~
    `[kid u.res]
  ::
  ++  read-z
    ~/  %read-z
    |=  [p=pith:neo =case]
    ^-  (unit epic:neo)
    ?~  bod=(~(get of zed) p)
      ~
    ?~  sol=(get:on:body:t u.bod case)
      ~
    :-  ~
    %-  ~(gas of *epic:neo)
    %+  murn  ~(tap by u.sol)
    |=  [=pith:neo cas=@ud]
    ?~  res=(need (read-x-raw pith cas))
      ~
    `[pith u.res]
  ++  look
    ~/  %look
    |=  =hunt:neo
    =/  =case:neo
      (get-case hunt)
    (scry hunt (get-case hunt))
  ::
  ++  get-case
    ~/  %get-case
    |=  =hunt:neo
    ^-  @ud
    ?-    care.hunt
        ?(%x %a)
      ?~  lom=(~(get of soil) pith.hunt)
        0
      ?~  san=~(last or u.lom)
        0
      ?~  dir=(~(got or u.lom) k.u.san)
        l.u.san
      =/  [key=@ *]  (need (ram:on:dirt:t u.dir))
      key
    ::
        ?(%y %b)
      =/  [=pith:n bod=(unit body:t)]
        (~(fit of why) pith.hunt)
      ?~  bod
        0
      key:(need (ram:on:body:t u.bod))
    ::
        ?(%z %c)
      =/  [=pith:n bod=(unit body:t)]
        (~(fit of zed) pith.hunt)
      ?~  bod
        0
      key:(need (ram:on:body:t u.bod))
    ==
  ::
  ++  plant
    ~/  %plant
    |=  =seed:t
    =/  ls   ~(sap of seed)
    |-  ^+  farm
    ?~  ls 
      =.  farm  (till %y)
      (till %z)
    $(farm (call i.ls), ls t.ls)
  ++  get-why
    ^-  [@ud soul:t]
    =/  plot  ~(snip of soil.farm)
    :-
      %-  roll
      :_  |:([a=0 b=0] (add a b))
      ^-  (list @ud)
      %+  turn  ~(tap of plot)
      |=  [=pith:neo *]
      (get-case %x pith)
    =.  fil.plot  ~
    %-  ~(run by ~(tar of plot))
    |=  =loam:t
    ?~  san=~(last or loam)
      ~&  %weird
      0
    ?~  dir=(~(got or loam) k.u.san)
      l.u.san
    =/  [key=@ud *]  (need (ram:on:dirt:t u.dir))
    key
  ++  get-zed
    ^-  [@ud soul:t]
    =/  plot  soil.farm
    :-
      %-  roll
      :_  |:([a=0 b=0] (add a b))
      ^-  (list @ud)
      %+  turn  ~(tap of plot)
      |=  [=pith:neo *]
      (get-case %x pith)
    =.  fil.plot  ~
    %-  ~(gas by *soul:t) 
    ^-  (list [pith:neo @ud])
    %+  murn  ~(tap of plot)
    |=  [=pith:neo =loam:t]
    ^-  (unit [pith:neo @ud])
    ?~  san=~(last or loam)
      ~&  %weird
      ~
    ?~  dir=(~(got or loam) k.u.san)
      `[pith l.u.san]
    =/  [key=@ud *]  (need (ram:on:dirt:t u.dir))
    `[pith key]

  ++  rep
    ~/  %rep
    |=  [=pith f=farm:t]
    ^+  farm
    %_  farm
      soil  (~(rep of soil.farm) pith soil.f)
      exe   (~(rep of exe.farm) pith exe.f)
      why   (~(rep of why.farm) pith why.f)
      zed   (~(rep of zed.farm) pith zed.f)
    ==
  ++  dip
    ~/  %dip
    |=  =pith
    %_  farm
      soil  (~(dip of soil.farm) pith)
      exe   (~(dip of exe.farm) pith)
      why   (~(dip of why.farm) pith)
      zed   (~(dip of zed.farm) pith)
    ==

    
  ::  +till: update dares
  ::
  ::    XX: potentially wrong if updates do not come in order 
  ++  till
    ~/  %till
    |=  kind=?(%y %z)
    =*  loop  $
    ^+  farm 
    =/  [dare=@ud =soul:t]
      ?:  =(kind %y)
        get-why
      get-zed
    =/  =body:t
      ?:  =(kind %y)
        (~(gut of why.farm) / *body:t)
      (~(gut of zed.farm) / *body:t)
    =.  body  (put:on:body:t body dare soul)
    =.  farm
      ?:  =(kind %y)
        farm(why (~(put of why.farm) / body))
      farm(zed (~(put of zed.farm) / body))
    =/  kid   ~(tap in ~(key by kid.soil.farm))
    |-
    ?~  kid
      farm
    =.  farm  (rep ~[i.kid] loop(farm (dip ~[i.kid])))
    $(kid t.kid)
  ::
  ++  call
    ~/  %call
    |=  [=pith:neo not=note:t]
    ^+  farm
    ?-  -.not
      %grow  (grow pith +.not)
      %cull  (cull pith +.not)
    ==
  ++  grow
    ~/  %grow
    |=  $:  =pith
            cas=(unit (pair rift case))
            =pail:neo
            =poem:neo
        ==
    ::  XX: check manual casing if foreign ship
    ^+  farm
    ?^  cas
      (grow-at pith u.cas pail poem)
    ?~  lom=(~(get of soil) pith)
      ::  never bound before
      (grow-at pith [1 1] pail poem)
    ?~  las=~(last or u.lom)
      ~&  weird-empty-loam/pith
      (grow-at pith [1 1] pail poem)
    ?~  dir=(~(got or u.lom) k.u.las)
      ::  binding over empty, inc breach
      =/  [=rift =case]   [+(k.u.las) r.u.las]
      (grow-at pith [rift case] pail poem)
    ?~  cas=(ram:on:dirt:t u.dir)
      ~|  weird-empty-dirt/pith
      !!
    ::  binding over normal, no breach
    ::  XX: enforce that =((~(uni in new-poke) old-poke) new-poke)
    (grow-at pith [k.u.las +(key.u.cas)] pail poem)
  ::
  ++  grow-at
    ~/  %grow-at
    |=  $:  =pith
            at=(pair rift case)
            =pail:neo
            =poem:neo
        ==
    ^+  farm
    =/  =data:t  [=oath:neo & pail poem]
    =/  =loam:t  (fall (~(get of soil) pith) *loam:t)
    =/  [=span:neo =dirt:t]
      =/  res  (~(gat or loam) p.at)
      ?~  res 
        [[p.at q.at 0] *dirt:t]
      ?~  q.u.res
        ~|  %weird-case-overwriting-culled
        !!
      [p u.q]:u.res
    =.  dirt  (put:on:dirt:t dirt q.at data)
    =.  loam
      (~(put or loam) [span `dirt])
    =.  soil  (~(put of soil) pith loam)
    farm
  ::
  ++  cull
    ~/  %cull
    |=  [=pith:neo rif=(unit rift)]
    ^+  farm
    %+  cull-at  pith
    ?^  rif
      u.rif
    ::  XX: this path should only be hit in local ship case, XX:
    ::  assert
    ?~  lom=(~(get of soil) pith)
      ~|  weird-cull-nothing/pith
      mean:(farm:etch farm)
    +(~(wyt or u.lom))
  ::
  ++  cull-at
    ~/  %cull-at
    |=  [=pith:neo =rift]
    ^+  farm
    ?~  lom=(~(get of soil) pith)
      ~|  weird-cull-nothing/pith
      !!
    ?:  (lte rift 1)
      ~|  weird-cull-rift/[pith rift]
      !!
    ?~  dir=(~(got or u.lom) (dec rift))
      ~|  useless-cull/[pith rift]
      !!
    ?~  las=(ram:on:dirt:t u.dir)
      ~|  cull-empty-dirt/[pith rift]
      !!
    =.  u.lom  (~(snoc or u.lom) rift +(key.u.las) ~)
    =.  soil  (~(put of soil) pith u.lom)
    farm
  --
--
