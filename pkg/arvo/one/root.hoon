=>
  |%
  ++  f   fern:t
  ++  b   bush:t
  ++  n   neo
  +$  state-0
    $%  [%foo ~]
        [%bar ~]
    ==
  --
=|  state-0
|_  =mien:fern:t  
++  this  .
++  call
  |=  =note:fern:t
  ^-  [step:f _this]
  ?-  -.note
    %bush  (burn +.note)
    %hear  !!
    %have  !!
  ==
++  burn
  =|  =step:f
  |=  [src=pith:n dst=pith:n =note:b]
  ^-  [step:f _this]
  =<  abet:call
  |%
  ++  abet   [step this]
  ++  burn  .
  ++  bind
    |=  [=pith:n =note:t]
    =.  seed.step  (~(put of seed.step) pith note)
    burn
  ++  call
    ^+  burn
    ?+  -.note  !!
      %poke  ((slog leaf/"got-poke" (sell q.pail.note) ~) burn)
      %make  (make +.note)
    ==
  ++  make
    |=  [code=stud:n init=(unit pail:n) xtra=pail:n]
    ^+  burn
    :: ?>  =(%root-conf p.xtra)
    :: =+  !<(=conf:n q.xtra)
    (bind dst %grow ~ (need init) *(set stud:n))
  --
--
