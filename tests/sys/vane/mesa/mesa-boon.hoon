::  test send %poke %boon
::
/+  *test, v=test-mesa-gall
|%
++  dbug  `?`&
++  test-watch
  %-  run-chain
  |.  :-  %|
  =+  (nec-bud:v [nec=2 bud=3] nec=0 bud=0)
  =/  poke-plea   [%g /ge/pok [%0 %m noun/0]]
  =/  poke-path   /~nec/poke/~bud/flow/0/for/1
  =/  ack-path    /~bud/ack/~nec/flow/0/bak/1
  =/  ack-wire    /flow/int/for/~bud/0/0/1
  =/  vane-wire   /flow/out/bak/~nec/0/0/1
  =/  make-poke=[%make-poke spar:ames path]
    [%make-poke [~bud ack-path] poke-path]
  ::  preamble
  ::
  =^  *  ames.nec
    (mesa-call:v ames.nec [~[/poke] [%plea ~bud poke-plea] *roof])
  ::
  =^  *  ames.nec
    (mesa-call:v ames.nec ~[ack-wire /poke] make-poke *roof)
  =/  message=mess:mesa
    [%poke [~bud ack-path] [~nec poke-path] auth=&+*@uxJ page=message/poke-plea]
  ::
  =^  *  ames.bud
    (mesa-call:v ames.bud ~[//unix] [%mess lane=`*@ux message] *roof)
  ::
  =^  *  ames.bud
    (mesa-take:v ames.bud vane-wire ~[//unix] [%gall %done ~] *roof)
  ::
  =^  *  ames.nec
    %:    mesa-take:v  ames.nec  ack-wire
      ~[/poke]
      [%mesa %response %page ~bud^ack-path *(each @uxJ @uxI) `page`message/|]
      *roof
    ==
  ::  start
  ::
  =/  poke-boon  [%x ~]  :: %kick
  =/  boon-path  /~bud/poke/~nec/flow/0/bak/1
  =/  ack-path   /~nec/ack/~bud/flow/0/for/1
  =/  make-poke=[%make-poke spar:ames path]
    [%make-poke [~nec [%$ %x '1' %$ ack-path]] [%$ %x '1' %$ boon-path]]
  ~?  >  dbug  'send %poke-boon to ~nec'
  =^  moves-1  ames.bud
    %:    mesa-check-take:v  ames.bud
        [~1111.1.1 0xdead.beef *roof]
    ::
      [vane-wire ~[/poke] %mesa %boon `*`poke-boon]
    ::
      :~  [~[/poke] [%pass /~nec/0/0 %b %wait ~1111.1.1..00.00.30]]
        ::
          :-  ~[/poke]
          [%pass /flow/int/bak/~nec/0/0/1 %m make-poke]
      ==
    ==
::
  :-  moves-1  |.  :-  %|
  ~?  >  dbug  '~bud makes $pact and sends it'
  =^  moves-2  ames.bud
    %:    mesa-check-call:v  ames.bud
        [~1111.1.1 0xdead.beef *roof]
    ::
      [~[/flow/int/bak/~nec/0/0/1 /poke] make-poke]
    ::
      :~  [~[//unix] %give %send lanes=~ blob=0] :: XX TODO
      ==
    ==
  ::
  ~?  >  dbug  'boon payload is accesible at /~bud/poke/~nec/flow/0/for/1'
  :-  moves-2  |.  :-  %|
  =/  moves-3
    %+  expect-eq
    !>  boon/poke-boon
    !>  !<  page
        =<  ?>  ?=(%message p)  q
        %-  need   %-  need
        %-  scry:(ames.bud ~1111.1.10 `@`0xdead.beef *roof)
        [[~ ~] / %x [[~bud %$ ud+1] boon-path]]
  ::
  :-  moves-3  |.  :-  %|
  ~?  >  dbug  '~nec hears %poke-boon from ~bud'
  =/  message=mess:mesa
    ::  XX  the message layer should only get the inner path (from rift onwards)
    ::
    :*  %poke
        [~nec ack-path]
        [~bud boon-path]
        auth=&+*@uxJ
        page=message/poke-boon
    ==
  ::
  =^  moves-4  ames.nec
    %:  mesa-check-call:v  ames.nec
      [~1111.1.2 0xbeef.dead *roof]
      :-  ~[//unix]
      [%mess lane=`*@ux message]
    ::
      :~  [~[/poke] [%give %boon poke-boon]]
      ==
    ==
  ::
  :-  moves-4  |.  :-  %&
    %+  expect-eq
    !>  0
    !>  =<  next-bone.ossuary
        %:  mesa-scry-peer:v
          ames.bud
          [~1111.1.10 0xdead.beef *roof]
          [~bud ~nec]
        ==
--