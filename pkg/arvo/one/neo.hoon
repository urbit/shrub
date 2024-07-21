:: neo: Prelapsarian root shrub
::
::   Reserved namespace
::
::     /cod/ - Build system
::     /int - interfaces

=>
  |%
  ++  verb  &
  ++  f   fern:t
  ++  b   bush:t
  ++  n   neo
  +$  state-0
    $:  following=(jug pith:n pith:n)
        ~
    ==
  ++  reap
    |=  [=farm:f =seed:f]
    ^-  muck:f 
    =/  =epic:n
      (need (~(look plow farm) [%z /]))
    =/  =muck:f  
      %-  ~(run of epic)
      |=  =saga:n
      q.saga
    =/  sed=(list (pair pith note:t))  ~(aap of seed)
    |-
    ?~  sed
      muck
    ?-    -.q.i.sed
        %grow 
      ?^  cas.q.i.sed
        $(sed t.sed)
      =/  =poem:n  [*stud:n poke.q.i.sed]
      =.  muck  (~(put of muck) p.i.sed poem pail.q.i.sed)
      $(sed t.sed)
    ::
        %cull
      ?^  rif.q.i.sed
        $(sed t.sed)
      =.  muck  (~(del of muck) p.i.sed)
      $(sed t.sed)
    ==
  --
=|  state-0
|_  =mien:fern:t  
++  this  .
++  our  our.mien
++  boot
  ^-  [step:f _this]
  [*step:f this]
++  call
  |=  =note:fern:t
  ^-  [step:f _this]
  ?-  -.note
    %bush  abet:(arvo +.note)
    %hear  (hear +.note)
    %have  !!
  ==
++  hear
  |=  =hunt:n 
  ^-  [step:f _this]
  [*step:f this]
::
++  arvo
  =|  =block:n
  =|  =step:f
  |=  =move:b
  =/  src=name:neo  (de-pith:name:n p.move)
  =/  init=[src=name:neo dst=name:neo]
    [src (de-pith:name:n p.q.move)]
  =/  init-move  move
  =/  here  pith.dst.init
  ?>  =(our.mien ship.dst.init)
  ::  XX: blocking semantives
  =<  (apply move)
  |%
  ++  abet  [step this]
  ++  arvo  .
  ++  apply
    |=  =move:b
    ?.  =(~ err.block)
      arvo
    =.  src  (de-pith:name:n p.move)
    =/  =name:neo  (de-pith:name:n p.q.move)
    =.  here       +:p.q.move
    ?-  -.q.q.move
      %make  (make +.q.q.move)
      %poke  (poke +.q.q.move)
      %cull  cull
    ==
  ++  make
    |=  [code=stud:n init=(unit pail:n) xtra=pail:n]
    ^+  arvo
    arvo
  ++  poke
    |=  pok=pail:n
    ^+  arvo
    arvo
  ++  cull
    ^+  arvo
    arvo
  --
--

