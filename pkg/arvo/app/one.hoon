/-  neo
/+  util=neo-three
/+  default-agent
/+  dbug
/+  libverb=verb
/+  serv=server
/*  txt-root-fern   %hoon   /one/root/hoon
=>
  |%
  ++  prelude  !>(util)
  ++  dev  |
::  =>  !@(dev ((slog leaf/"tape" ~) .) .)
  ++  mute
    ?:  dev  same
    |*  *
    !.  +<
  --
=,  util
|%
+$  card  $+(card card:agent:gall)
+$  state-0
  $+  state-0
  $:  =zion:t
      =farm:t
  ==
--
=|  state-0
=*  state  -
=<
  %+  libverb  |
  %-  agent:dbug
  ^-  agent:gall
  |_  =bowl:gall
  +*  this  .
      run   ~(. +> [bowl ~])
      def   ~(. (default-agent this %|) bowl)
  ++  on-init
    ^-  (quip card _this)
    =^  cards  state
      abet:boot:run
    [cards this]
  ++  on-save  !>(state)
  ++  on-load
    |=  vax=vase
    =+  !<(sta=state-0 vax)
    `this(state sta)
  ++  on-poke
    |=  =cage
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-poke:run cage)
    [cards this]
  ++  on-watch
    |=  =path
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-peer:run path |)
    [cards this]
  ++  on-leave
    |=  =path
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-peer:run path &)
    [cards this]
  ::
  ++  on-agent
    |=  [=wire =sign:agent:gall]
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-agent:run wire sign)
    [cards this]
  ++  on-arvo
    |=  [=wire syn=sign-arvo]
    ^-  (quip card _this)
    =^  cards  state
      abet:(on-arvo:run wire syn)
    [cards this]
  ++  on-fail  on-fail:def
  ++  on-peek  on-peek:run
  --
|_  [=bowl:gall cards=(list card)]
::  |aux: auxilliary helpers
+|  %aux
++  abet  [(flop cards) state]
++  run  .
++  our  our.bowl
++  emit  |=(=card run(cards [card cards]))
++  pass  |=([=wire =note:agent:gall] `card`[%pass wire note])
++  give  |=(=gift:agent:gall (emit %give gift))
++  fact  |=([pas=(list path) =cage] (give %fact pas cage))
++  emil  |=(caz=(list card) run(cards (welp (flop caz) cards)))
++  def   ~(. (default-agent run %|) bowl)
++  boot
  ^+  run
  =.  our.farm  our.bowl
  =/  vaz  (vang & /root)
  =/  hon  (scan (trip txt-root-fern) (full (ifix [gay gay] tall:vaz)))
  (install ~ (slap prelude hon))
++  on-poke
  |=  [=mark =vase]
  ^+  run
  ?:  =(%noun mark)
    ?+    q.vase
      =+  ;;(=task:fern:t q.vase)
      fe-abet:(fe-call:(fe p.task) q.task)
    ::
        %dbug
      %-  print:(farm:etch farm)
      run
    ==
  ?>  =(%one-task mark)
  =+  !<(=task:fern:t vase)
  fe-abet:(fe-call:(fe p.task) q.task)
++  on-peer
  |=  [=path stop=?]
  ^+  run
  !!
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^+  run
  !!
++  on-arvo
  |=  [=wire syn=sign-arvo]
  ^+  run
  !!
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  [~ ~]
++  install
  |=  [=pith:t vax=vase]
  =/  =fern:t
    :*  vax
        *(axal:t ever:t)
        *(set hunt:t)
    ==
  =.  zion  (~(put of zion) pith fern)
  run
::
++  fe
  |=  =pith:t
  =/  =fern:t  (~(got of zion) pith)
  |%
  ++  fe-abet  run(zion (~(put of zion) pith fern))
  ++  fe  .
  ++  fe-farm  (~(dip plow farm) pith)
  ++  mien
    ^-  mien:fern:t
    [our.bowl now.bowl eny.bowl heed.fern fe-farm]
  ++  fe-code  code.fern(+6.q mien)
  ++  fe-call
    |=  =note:fern:t
    =/  res=vase  (slym (slap fe-code limb/%call) note)
    =+  !<([=seed:t io=(list gift:fern:t)] (slot 2 res))
    =.  farm  (~(rep plow farm) pith (~(plant plow fe-farm) seed))
    =.  code.fern  (slot 3 res)
    fe
  --
--

