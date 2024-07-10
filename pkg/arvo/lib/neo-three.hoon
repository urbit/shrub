/-  neo
|%
+$  case  @ud
++  of  of:neo
++  or  or:neo
++  t
  ^~
  |%
  ::
  +$  case  @ud
  ::  $data: resolved data in space
  +$  data  [=oath:neo =pail:neo poke=(set stud:neo)]
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
  +$  note 
    $%  [%grow cas=(unit (pair rift case)) =pail:neo poke=(set stud:neo)]
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
  |%
  ++  etch  .
  ++  abet  res
  ++  print
    |-  ^+  same
    ?~  res
      same
    ~>  %slog.[p.i.res leaf/q.i.res]
    $(res t.res)
  ++  tab   etch(ind (add ind stop))
  ++  untab  etch(ind (sub ind stop))
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
    ~&  printing/[next cont]
    =.  etch  (print-ln next)
    ?:  =(cont ~)
      etch
    $(a cont)
  ++  farm
    |=  f=farm:t
    ^+  etch
    =<  +
    %+  roll  ~(aap of soil.f)
    |=  [[=pith:neo l=loam:t] [prev=pith:neo e=_etch]]
    ^+  [prev e]
    =/  is-child   (gth (lent pith) (lent prev))
    ~&  is-child/[is-child pith prev]
::  =.  e 
::    ?:  is-child  tab:e  untab:e
    =.  e  
      %+  print-ln-raw:e  1
      %-  en-tape:pith:neo 
      pith 
      :: ?:  is-child
        :: (sub:pith:neo pith prev)
      :: pith
    :-  pith
    (loam:e l)
  ++  loam
    |=  l=loam:t
    ^+  etch
    =/  last  (need ~(last or l))
    =/  val   (~(got or l) k.last)
    =.  etch  (print-ln "Current rift: {(scow %ud k.last)}")
    =.  etch
      ?~  val  (print-ln "No value at current rift")
      =.  etch  (print-ln "Versions starting at {(scow %ud l.last)}")
      untab:(dirt:tab u.val)
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
    untab:(print-tank:tab:e (sell q.pail.data))
  --
::
++  plow
  |_  farm:t
  +*  farm  +<
  ++  scry
    |=  [=hunt:neo =case]
    ^-  (unit epic:neo)
    =/  =name:neo  (de-pith:name:neo pith.hunt)
    =/  is-our=?  =(ship.name our)
    |^
    ?+  care.hunt  ~ :: XX: wrong deal with abc
      %x  read-x
      %y  read-y
      %z  read-z
    ==
    ++  lift
      |=  =data:t
      ^-  saga:neo
      =/  =aeon:neo
        [*ever:neo oath.data poke.data]
      [aeon pail.data]
    ::
    ++  wrap
      =|  =epic:neo
      |=  ls=(list [=pith:neo =data:t])
      ^+  epic
      ?~  ls
        epic
      =/  =saga:neo  (lift data.i.ls)
      $(epic (~(put of epic) pith.i.ls saga), ls t.ls)
    ++  not-found
      ^-  (unit epic:neo)
      `*epic:neo
    ++  mystery
      ^-  (unit epic:neo)
      ?:(is-our not-found ~)
    ++  read-x
      ^-  (unit epic:neo)
      ?~  lom=(~(get of soil) pith.hunt)
        mystery
      ?~  dir=(~(wit or u.lom) case)
        mystery
      ?~  u.dir
        not-found
      ?^  ver=(get:on:dirt:t u.u.dir case)
        `(wrap [/ u.ver] ~)
      ?~  lat=(ram:on:dirt:t u.u.dir)
        ~
      ?:  (lte case key.u.lat)
        not-found
      ~
    ::
    ++  read-y
      ^-  (unit epic:neo)
      mystery
    ::
    ++  read-z
      ^-  (unit epic:neo)
      mystery
    --
  ++  plant
    |=  =seed:t
    =/  ls   ~(sap of seed)
    |-  ^+  farm
    ?~  ls 
      farm
    $(farm (call i.ls), ls t.ls)
  ++  call
    |=  [=pith:neo not=note:t]
    ^+  farm
    ?-  -.not
      %grow  (grow pith +.not)
      %cull  (cull pith +.not)
    ==
  ++  grow
    |=  $:  =pith
            cas=(unit (pair rift case))
            =pail:neo
            poke=(set stud:neo)
        ==
    ::  XX: check manual casing if foreign ship
    ^+  farm
    ?^  cas
      (grow-at pith u.cas pail poke)
    ?~  lom=(~(get of soil) pith)
      ::  never bound before
      (grow-at pith [1 1] pail poke)
    ?~  las=~(last or u.lom)
      ~&  weird-empty-loam/pith
      (grow-at pith [1 1] pail poke)
    ?~  dir=(~(got or u.lom) k.u.las)
      ::  binding over empty, inc breach
      =/  [=rift =case]   [+(k.u.las) r.u.las]
      (grow-at pith [rift case] pail poke)
    ?~  cas=(ram:on:dirt:t u.dir)
      ~|  weird-empty-dirt/pith
      !!
    ::  binding over normal, no breach
    ::  XX: enforce that =((~(uni in new-poke) old-poke) new-poke)
    (grow-at pith [k.u.las +(key.u.cas)] pail poke)
  ::
  ++  grow-at
    |=  $:  =pith
            at=(pair rift case)
            =pail:neo
            poke=(set stud:neo)
        ==
    ^+  farm
    =/  =data:t  [=oath:neo pail poke]
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
    |=  [=pith:neo rif=(unit rift)]
    ^+  farm
    ?^  rif
      (cull-at pith u.rif)
    ::  XX: this path should only be hit in local ship case, XX:
    ::  assert
    ?~  lom=(~(get of soil) pith)
      ~|  weird-cull-nothing/pith
      !!
    ?~  san=~(last or u.lom)
      ~|  weird-cull-empty-loam/pith
      !!
    (cull-at pith +(k.u.san))
  ::
  ++  cull-at
    |=  [=pith:neo =rift]
    ^+  farm
    ~&  cull-at/[pith rift]
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
