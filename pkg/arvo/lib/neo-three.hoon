/-  neo
|%
++  of  of:neo
++  or  or:neo
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
++  loam  (mip:neo dirt)
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
+$  moss  (map pith body)
::  $mire: mapping from x case to dare cases
++  mire
  =<  mire
  |%
  ++  on    ((^on case (set case)) lte)
  ++  mire  ((mop case (set case)) lte)
  --
+$  peat  (map pith mire)
+$  farm
  $:  our=ship
      =soil
      =moss
      =peat
  ==
+$  seed  (axal:neo [=pail:neo poke=(set stud:neo)])
+$  note 
  $%  [%grow cas=(unit case) =pail:neo poke=(set stud:neo)]
      [%cull ~]
  ==
++  plow
  |_  farm
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
      |=  =data
      ^-  saga:neo
      =/  =aeon:neo
        [*ever:neo oath.data poke.data]
      [aeon pail.data]
    ::
    ++  wrap
      =|  =epic:neo
      |=  ls=(list [=pith:neo =data])
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
      ~!  dir
      ?^  ver=(get:on:dirt u.dir case)
        `(wrap [/ u.ver] ~)
      ?~  lat=(ram:on:dirt u.dir)
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
    |=  =seed
    =/  ls   ~(sap of seed)
    ^+  farm
    farm
  ++  call
    |=  [=pith:neo not=note]
    ^+  farm
    ?-  -.not
      %grow  (do-grow pith +.not)
      %cull  (cull pith)
    ==
  ++  do-grow
    |=  [=pith cas=(unit @) =pail:neo poke=(set stud:neo)]
    ^+  farm
    farm
  ++  cull
    |=  =pith:neo
    ^+  farm
    farm
  --
--
