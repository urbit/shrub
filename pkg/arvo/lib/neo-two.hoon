/-  neo
::  Layer 1
=>
|%
++  bump
  |=  [=land:neo kind=?(%y %z)]
  ^+  land
  ?~  pie=(pry:on:land:neo land)
    land
  =/  [=case:neo =over:neo]  u.pie
  %^  put:on:land:neo  land  case
  ?:  ?=(%y kind)
    over(q.why +(q.why.over))
  over(q.zed +(q.zed.over))
::
++  jolt
  |=  [parent=land:neo =land:neo]
  ^+  land
  =/  [=case:neo =over:neo]
    ?^  pie=(pry:on:land:neo land)
      u.pie
    :-  0
    ?~  par=(pry:on:land:neo parent)
      [[0 0] [0 0]]
    [[. .]:key.u.par [. .]:q.zed.val.u.par]
  %^  put:on:land:neo  land   +(case)
  ^-  over:neo
  :*  [. .]:.+(q.why.over)
      [. .]:.+(q.zed.over)
  ==
::
++  tend
  ~+
  |_  =loam:dirt:neo
  +*  bone  bone.loam
      live  live.loam
  ++  case
    ^-  case:neo
    ?~  fil.loam  0
    ?~  pie=(pry:on:past:neo bone.u.fil.loam)
      0
    -.u.pie
  ++  grow
    |=  [=pail:neo =oath:neo]
    ^-  (quip case:neo loam:dirt:neo)
    =.  loam  +:cull 
    =.  fil.loam
      =/  =tale:neo  [+(case) oath]
      ^-  (unit soil:dirt:neo)
      :-  ~
      :-  `[tale pail]
      ?~  fil.loam
        *past:neo
      bone.u.fil.loam
    [~[+(case)] loam]
  ++  cull
    ^-  (quip case:neo loam:dirt:neo)
    ?~  fil.loam
      [~ loam]
    ?~  live.u.fil.loam
      [~ loam]
    =/  =poem:neo  [p `q]:u.live.u.fil.loam
    =.  bone.u.fil.loam  (put:on:past:neo bone.u.fil.loam p.p.u.live.u.fil.loam poem)
    =/  =case:neo  p.p.u.live.u.fil.loam
    =>  .(u.fil.loam `soil:dirt:neo`u.fil.loam)
    =.  live.u.fil.loam  ~
    [~[case] loam]
  --
::  +plow: operate on $soil
++  plow
  |_  =loam:dirt:neo
  ++  call
    |=  =card:dirt:neo
    ^-  (quip gift:dirt:neo _loam)
    =/  lom   (~(dip of:neo loam) p.card)
    =^  gifts=(list case:neo)  lom
      ?-  -.q.card
        %grow  (~(grow tend lom) +.q.card)
        %cull  ~(cull tend lom)
      ==
    :_  (~(rep of:neo loam) p.card lom)
    (turn gifts |=(@ `gift:dirt:neo`[p.card +< -.q.card]))
  ++  scry
    |=  [=case:neo =pith:neo]
    ^-  (unit poem:neo)
    =/  lom  (~(dip of:neo loam) pith)
    ?~  fil.lom
      ~
    ?:  ?&  ?=(^ live.u.fil.lom)
            =(case p.p.u.live.u.fil.lom)
        ==
      `[p `q]:u.live.u.fil.lom
    (get:on:past:neo bone.u.fil.lom case)
  ++  peek
    |=  =pith:neo
    ^-  (unit book:neo)
    =/  lom  (~(dip of:neo loam) pith)
    ?~  fil.lom
      ~
    live.u.fil.lom
  --
--
::  layer 2
|%
++  till
  |_  =farm:neo
  ++  self
    |=  [=pith:neo case=@ud]
    =/  parent=land:neo
      ?~  par=(~(parent of:neo farm) pith)
        *land:neo
      (~(got of:neo farm) u.par)
    (~(put of:neo farm) pith (jolt parent (~(got of:neo farm) pith)))
  ::
  ++  eternal
    |=  [=pith:neo case=@ud]
    =.  farm  (heir pith)
    (chain pith)
  ++  chain
    |=  =pith:neo
    ?~  pith
      farm
    =/  kid  (~(gut by kid.farm) i.pith `farm:neo`[~ ~])
    =?  fil.farm   ?=(^ fil.farm)
      `(bump u.fil.farm %z)
    farm(kid (~(put by kid.farm) i.pith $(farm kid, pith t.pith)))
  ::
  ++  heir
    |=  =pith:neo
    ^-  farm:neo
    ?~  par=(~(parent of:neo farm) pith)
      farm
    =/  lan  (~(got of:neo farm) u.par)
    (~(put of:neo farm) u.par (bump lan %y))
  ::
  ++  take-cull
    |=  [=pith:neo =case:neo]
    ^-  farm:neo
    ?~  pith
      farm
    =/  kid  (~(gut by kid.farm) i.pith `farm:neo`[~ ~])
    farm(kid (~(put by kid.farm) i.pith $(farm kid, pith t.pith)))
  ::
  ++  take
    |=  =gift:dirt:neo
    ^-  farm:neo
    (eternal [p q]:gift)
  --
--

