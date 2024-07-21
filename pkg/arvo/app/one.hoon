/-  neo
/+  util=neo-three
/+  default-agent
/+  dbug
/+  libverb=verb
/+  serv=server
/*  txt-root-fern   %hoon   /one/root/hoon
/*  txt-root-neo    %hoon   /one/neo/hoon
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
      ears=(jug hunt:neo pith:neo)
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
      run   ~(. +> [bowl ~ *seed:t])
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
    ?:  =(1 1)
      (on-agent:def wire sign)
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
|_  [=bowl:gall cards=(list card) =seed:t]
::  |aux: auxilliary helpers
+|  %aux
++  abet  
  =?  cards  !=(0 ~(wyt of seed))
    :_(cards [%pass / %agent [our dap]:bowl %poke one-seed/!>(seed)])
  [(flop cards) state]
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
  =/  hon  (scan (trip txt-root-neo) (full (ifix [gay gay] tall:vaz)))
  (install ~ (slap prelude hon))
++  on-poke
  |=  [=mark =vase]
  ^+  run
  ?:  =(%one-seed mark)
    (harvest !<(crop=seed:t vase))
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
  +:(on-agent:def wire sign)
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
++  harvest
  |=  crop=seed:t
  ^+  run
  =/  germ=(list [=pith:neo =note:t])
    ~(aap of crop)
  |-  ^+  run
  =*  loop-germ  $
  ?~  germ
    run
  =/  =hunt:neo  [%x pith.i.germ]
  =/  listeners  ~(tap in (~(get ju ears) hunt))
  |-
  ?~  listeners
    loop-germ(germ t.germ)
  =.  run
    fe-abet:(fe-hear:(fe i.listeners) hunt)
  $(listeners t.listeners)
::
++  fe
  |=  =pith:t
  =/  =fern:t  (~(got of zion) pith)
  |%
  ++  fe-abet  run(zion (~(put of zion) pith fern))
  ++  fe  .
  ++  fe-farm  (~(dip plow farm) pith)
  ++  fe-mien
    ^-  mien:fern:t
    [our.bowl now.bowl eny.bowl heed.fern fe-farm]
  ++  fe-code  code.fern(+6.q fe-mien)
  ++  fe-reap
    |=  new=seed:t
    ^+  fe
    =.  farm  (~(rep plow farm) pith (~(plant plow fe-farm) new))
    =.  seed  (~(uni of new) seed)  :: XX: check validity
    fe
  ++  fe-hear
    |=  =hunt:neo
    (fe-call %hear hunt)
  ::
  ++  fe-call
    |=  =note:fern:t
    =/  res=vase  (slym (slap fe-code limb/%call) note)
    =+  !<([new=seed:t io=(list gift:fern:t)] (slot 2 res))
    =.  seed  (~(uni of seed) new)
    =.  farm  (~(rep plow farm) pith (~(plant plow fe-farm) seed))
    =.  fe    (fe-deal io)
    =.  code.fern  (slot 3 res)
    fe
  ++  fe-deal
    |=  io=(list gift:fern:t)
    ^+  fe
    ?~  io
      fe
    =/  =gift:fern:t  i.io
    ?+    -.gift   $(io t.io) :: XX: fixme
        %hark
      ~&  new-listener-for/hunt.gift
      =.  heed.fern  (~(put in heed.fern) hunt.gift)
      =.  ears  (~(put ju ears) hunt.gift pith)
      $(io t.io)
    ==
  --
--

