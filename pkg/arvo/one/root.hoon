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
  --
=|  state-0
|_  =mien:fern:t  
++  this  .
++  call
  |=  =note:fern:t
  ^-  [step:f _this]
  ?-  -.note
    %bush  (burn +.note)
    %hear  ~&  got-hear/+.note  [*step:f this]
    %have  !!
  ==
++  trace
  |*  [sut=* tap=(trap tang)]
  ^~  !@(verb ((slog (tap)) sut) sut)
::
++  burn
  =+  verb=&
  =|  =step:f
  |=  [src=pith:n dst=pith:n =note:b]
  =>  (trace . |.([leaf/"{(en-tape:pith:n src)} -> {(en-tape:pith:n dst)}: {<-.note>}" ~]))
  ^-  [step:f _this]
  =<  abet:call
  |%
  ++  abet   [step(io (flop io.step)) this]
  ++  burn  .
  ++  hark
    |=  =hunt:n
    ~&  hark/hunt
    =.  io.step  [hark/hunt io.step]
    burn
  ::
  ++  bind
    |=  [=pith:n =note:t]
    =.  seed.step  (~(put of seed.step) pith note)
    burn
    
  ++  call
    ^+  burn
    ?-  -.note
      %poke  (poke +.note)
      %make  (make +.note)
      %cull  cull
    ==
  ++  poke
    |=  pok=pail:n
    ^+  burn
    ?:  =(p.pok %follow)
      (follow !<(=pith:n q.pok))
    abet:(poke:clip pok)
  ::
  ++  follow
    |=  =pith:n
    ^+  burn
    =?  burn  =(~ (~(gut by following) pith ~))
      (hark %x pith)
    =.  following  (~(put ju following) pith dst)
    burn
  ::
  ++  make
    |=  [code=stud:n init=(unit pail:n) xtra=pail:n]
    ^+  burn
    :: ?>  =(%root-conf p.xtra)
    :: =+  !<(=conf:n q.xtra)
    (bind dst %grow ~ (need init) *(set stud:n))
  ++  cull
    ^+  burn
    (bind dst %cull ~)
  ::
  ++  clip
    =/  =saga:n
      (~(got of (need (~(look plow farm.mien) %x dst))) /)
    =/  =pail:neo  q.saga
    |%
    ++  abet  
      ?:  =(pail q.saga)
        burn
      (bind dst %grow ~ pail *(set stud:n))
    ++  clip  .
    ++  poke
      |=  pok=pail:n
      =.  pail  pok
      clip
    --
  --
--
