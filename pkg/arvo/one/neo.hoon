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
    |=  [=farm:n =seed:f]
    ^-  mire:f 
    =|  =mire:f
    =/  fam  ~(tap of farm)
    =/  =mire:f
      %-  ~(run of farm)
      |=  
    
    |-  

    %-
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
    =/  
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

