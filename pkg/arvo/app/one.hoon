/-  neo, sole-sur=sole
/+  util=neo-three
/+  default-agent
/+  dbug
/+  libverb=verb
/+  serv=server
/+  shoe
/*  txt-root-fern   %hoon   /one/root/hoon
/*  txt-root-neo    %hoon   /one/neo/hoon
/*  txt-ford-same   %hoon   /neo/cod/std/src/imp/ford-same/hoon
/*  txt-ford-slop   %hoon   /neo/cod/std/src/imp/ford-slop/hoon
/*  txt-ford-slap   %hoon   /neo/cod/std/src/imp/ford-slap/hoon
/*  txt-ford-face   %hoon   /neo/cod/std/src/imp/ford-face/hoon
/*  txt-ford-face   %hoon   /neo/cod/std/src/imp/ford-face/hoon
/*  txt-ford-reef   %hoon   /neo/cod/std/src/imp/ford-reef/hoon
/*  txt-ford-desk   %hoon   /neo/cod/std/src/imp/ford-desk/hoon
/*  txt-ford-desp   %hoon   /neo/cod/std/src/pro/ford-desk/hoon
/*  txt-ford-text   %hoon   /neo/cod/std/src/imp/ford-text/hoon

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
+$  card  $+(card card:shoe)
+$  shell
  $:  cwd=pith:neo
      ~
  ==
++  sole
  |%
  +$  id  sole-id:sole-sur
  +$  action  sole-action:sole-sur
  +$  effect  sole-effect:sole-sur
  --

::
+$  hull
  $%  [%ls ~]
      [%show ~]
      [%tree depth=@ud]
      [%cd =pith:neo]
      [%poke p=hoon]
      [%commit ~]
      [%nuke ~]
      [%pill ~]
  ==
::
+$  state-0
  $+  state-0
  $:  =zion:t
      =farm:t
      ears=(jug hunt:neo pith:neo)
      shells=(map id:sole shell)
  ==
--
=|  state-0
=*  state  -
=<
  %+  libverb  |
  %-  agent:dbug
  ^-  agent:gall
  %-  (agent:shoe hull)
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
  ++  command-parser
    |=  =id:sole
    ~(parser walk:run id)
  ++  tab-list
    |=  [=id:sole query=@t]
    (~(tab walk:run id) query)
  ++  on-command
    |=  [=id:sole =hull] 
    =^  cards  state
      abet:(~(do walk:run id) hull)
    [cards this]
  ::
  ++  can-connect
    |=  =id:sole
    =(our src):bowl
  ++  on-connect
    |=  =id:sole
    =^  cards  state
      abet:(conn:run id)
    [cards this]
  ++  on-disconnect
    |=  =id:sole
    =^  cards  state
      abet:~(drop walk:run id)
    [cards this]
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
  =/  hon  
    (road |.((scan (trip txt-root-neo) (full (ifix [gay gay] tall:vaz)))))
  %+  install  ~
  %+  slym  (slap prelude hon)
  :*  
    :~  [%ford-same txt-ford-same]
        [%ford-face txt-ford-face]
        [%ford-slop txt-ford-slop]
        [%ford-text txt-ford-text]
        [%ford-slap txt-ford-slap]
        [%ford-desk txt-ford-desk]
    ==
  ::  install source
    =/  pax=path  (en-beam byk.bowl(r da/now.bowl) default-pill-tub)
    ~&  reading-pil/pax
    ?~  jam=(file:space:userlib pax)
      ~&  %no-pill-skipping
      *(axal:neo [kind=?(%txt %hoon) src=@t])
    ;;((axal:neo [kind=?(%txt %hoon) src=@t]) (cue ;;(@ u.jam)))
  ::
    ~
  ==
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
    ::
        [%pill path=*]
      (make-pill ;;(pax=path path.q.vase))
    ==
  ?>  |(=(%fern-task mark) =(%one-task mark))
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
++  default-pill-tub
  /neo-jam/atom
++  write-jamfile
  |=  jam=@
  ^+  run
  =;  =toro:clay
    (emit %pass /file %arvo %c %info toro)
  (foal:space:userlib (en-beam byk.bowl default-pill-tub) atom/!>(jam))

++  make-pill
  |=  pax=path
  ^+  run
  =+  .^(files=(list path) %ct pax)
  =.  files  (turn files (cury slag (sub (lent pax) 3)))
  ~&  files/files
  =|  pill=(axal:neo [kind=?(%hoon %txt) src=@t])
  |-  
  ?~  files
    ~&  writing-pill/~(key by ~(tar of pill))
    (write-jamfile (jam pill))
  =+  .^(src=@t %cx `path`(welp pax i.files))
  =/  ext=knot  (rear i.files)
  ?.  ?=(?(%hoon %txt) ext)
    ~&  unknown-ext-skipping/[ext i.files]
    $(files t.files)
  =.  pill  (~(put of pill) (snip i.files) [ext src])
  $(files t.files)
::
++  install
  |=  [=pith:t vax=vase]
  =/  =fern:t
    :*  vax
        *(axal:t ever:t)
        *(set hunt:t)
    ==
  =.  zion  (~(put of zion) pith fern)
  fe-abet:fe-boot:(fe pith)
::
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
++  on-bush-move
  |=  =move:bush:t
  ^+  run
  =/  pit=pith:neo  -:(~(fit of zion) p.q.move)
  fe-abet:(fe-call:(fe pit) %bush move)
::
++  fe
  |=  =pith:t
  =/  =fern:t  (~(got of zion) pith)
  |%
  ++  fe-abet  
    run(zion (~(put of zion) pith fern))
  ++  fe  .
  ++  fe-farm  (~(dip plow farm) pith)
  ++  fe-mien
    ^-  mien:fern:t
    [our.bowl pith now.bowl eny.bowl heed.fern fe-farm]
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
  ++  fe-boot
    (fe-ingest (slap fe-code limb/%boot))
  ++  fe-ingest
    |=  res=vase
    =+  !<([new=seed:t io=(list gift:fern:t)] (slot 2 res))
    =.  seed  (~(uni of seed) new)
    =.  farm  (~(rep plow farm) pith (~(plant plow fe-farm) seed))
    =.  fe    (fe-deal io)
    =.  code.fern  (slot 3 res)
    fe
  ::
  ++  fe-call
    |=  =note:fern:t
    (fe-ingest (slym (slap fe-code limb/%call) note))
  ++  fe-deal
    |=  io=(list gift:fern:t)
    ^+  fe
    ?~  io
      fe
    =/  =gift:fern:t  i.io
    ?+    -.gift   
       ~&   skipping-fern-gift/-.gift
       $(io t.io) :: XX: fixme
        %hark
      ~&  new-listener-for/hunt.gift
      =.  heed.fern  (~(put in heed.fern) hunt.gift)
      =.  ears  (~(put ju ears) hunt.gift pith)
      $(io t.io)
    ::
        %drip
      =.  run  (emit %pass /drip %agent [our dap]:bowl %poke fern-task/!>(`task:fern:t`[pith %drip ~]))
      $(io t.io)
    ==
  --
++  conn
  |=  =id:sole
  =/  =shell  [~ ~]
  =.  shells  (~(put by shells) id shell)
  ~(start walk id)
::
++  tell
  |_  =pith:neo
  ++  get
    ^-  (unit (unit saga:neo))
    ?~  pic=(~(look plow farm) %x pith)
      ~
    `(~(get of u.pic) /)
  ++  kids  desc
  ++  desc
    |=  depth=@ud
    |-  =*  loop  $
    ^-  (list (list dime))
    ?~  pic=(~(look plow farm) %y pith)
      *(list (list dime))
    =<  +
    %+  roll  ~(tap of u.pic)
    |=  [[kid=pith:neo =saga:neo] seen=(set pith:neo) res=(list (list dime))]
    ^-  [(set pith:neo) (list (list dime))]
    =.  kid  (scag depth kid)
    ?:  (~(has in seen) kid)
      [seen res]
    :-  (~(put in seen) kid)
    =.  pith  (welp pith kid)
    (snoc res row:item)
  ++  item
    =/  sag   get
    |%
    ++  code
      |=  =stud:neo
      ^-  @t
      %-  spat
      ^-  path
      ?@  stud
        /kelvin/(scot %ud zuse)/[stud]
      =,  stud
      /(scot %p ship)/[desk]/[mark]
    ++  row
      ^-  (list dime)
      ?~  sag
        :~  t/(spat (pout pith))
            t/'Directory'
            ud/0
            ud/0
        ==
      ?~  u.sag
       :~  t/(spat (pout pith))
           t/'Empty'
            ud/0
            ud/0
        ==
      :~  t/(spat (pout pith))
          t/(code code.p.q.u.u.sag)
          t/(code p.q.q.u.u.sag)
          ud/0
          ud/0
      ==
    --
  ++  show
    ^-  (list tank)
    =/  sag   get
    %-  lure
    ^-  tank
    ?-  sag
      ~         leaf/"Unbound"
      [~ ~]     leaf/"Bound, empty"
      [~ ~ *]   (sell q.q.q.u.u.sag)
    ==
  --
++  walk
  |_  =id:sole
  ++  start 
    abet:prompt:peel
  ++  drop
    ^+  run
    run(shells (~(del by shells) id))
  ++  peel
    =/  =shell  (~(got by shells) id)
    |%  
    ++  peel  .
    ++  abet  
      run(shells (~(put by shells) id shell))
    ++  tell  ~(. ^tell cwd.shell)
    ++  prompt
      |^
      =;  ef=shoe-effect:shoe
        =.  run  (shoe-ef ef)
        peel
      :-  %sole
      :^  %pro  &  %foo
      ^-  styx
      =,  shell
      %-  snoc
      :_  '> '
      ^-  (list @t)
      %-  zing
      ^-  (list (list @t))
      %+  turn  cwd
      |=  =iota:neo
      ^-  (list @t)
      =-  ~['/' -]
      ?@  iota  iota
      (scot iota)
      ++  un
        `styl`[`%un ~ ~]
      --
    ++  cwd
      |%
      ++  get  cwd.shell
      ++  set  |=(p=pith:neo =.(cwd.shell p prompt))
      --
    --
  ++  lily
    |*  [naf=@ sab=rule]
    =+  vex=(sab [1 1] (trip naf))
    ?~  q.vex  ~  
    [~ u=p.u.q.vex] 
  ++  default-list
    ^-  (list [@t tank]) 
    :~  'ls'^leaf/"List child shrubs at current path"
        'cd'^leaf/"Change directory"
        '.'^leaf/"Print node at path"
        't'^leaf/"List child shrubs at current path, recursively"
        'd'^leaf/"make pill"
        'b'^leaf/"Run |commit %{(trip q.byk.bowl)}"
        'n'^leaf/"Nuke, commit, restart"
        :: 'p'^leaf/"manual poke (takes [=stud val=*])"
        :: 'r'^leaf/"start form (takes form-name)"
    ==
  ++  tab
    |=  query=@t 
    ?:  =(1 1)
      default-list
    =/  query  (trip query)
    =+  vex=(parser [1 1] query)
    ?~  q.vex
      default-list
    =/  [[? =hull] =nail]  u.q.vex
    =/  parsed  (scag (sub (lent query) (lent q.nail)) query)
    |^  ^-  (list [@t tank])
    ?+  -.hull  ~
      %cd  (cd pith.hull)
    ==
    ++  cd
      |=  =pith:neo
      ^-  (list [@t tank])
      *(list [@t tank])
::    =/  dip  (dip:of-top pith.name)
::    =/  last
::      ?:(=(~ pith.name) %$ (rear pith.name))
::    =/  remove-len  (met 3 (show-iota last))
::    =?  pith.name  =([~ ~] dip)
::      (snip pith.name)
::    =?  parsed     =([~ ~] dip)
::      (scag (sub (lent parsed) remove-len) parsed)
::    =.  dip
::      (dip:of-top pith.name)
::    ?:  =(~ kid.dip)
::      ~
::    %+  turn  ~(tap by kid.dip)
::    |=  [seg=iota ax=(axal:neo room:neo)]
::    ^-  [@t tank]
::    :_  *tank
::    %+  cat  3
::    :-  (crip parsed)
::    ?@  seg  seg
::    (scot seg)
    --
  ++  parser
    |^  ^+  |~(nail *(like [? hull]))
    =-  ;~  pose
          (stag & (cold commit/~ (jest 'b')))
          (stag & (cold nuke/~ (jest 'n')))
          (stag & (cold pill/~ (jest 'd')))
          -
        ==
    %+  stag  |
    ;~  pose
      :: (csym %ls (easy ~))

      (cold ls/~ (jest 'ls'))
      (cold show/~ dot)
      :: (cold ford/~ (jest 'f'))
      (stag %tree ;~(pfix (jest 't') dem:ag))

      :: (stag %race ;~(pfix (jest 'r') ace sym))
      :: (stag %poke ;~(pfix (jest 'p') ace van))
    ::
      cd
      :: ;~(pfix wut (cold clay/~ (jest 'clay')))
      :: ;~(pfix hax (cold comm/~ (star prn)))
    ==
    ++  van  tall:(vang & /test)

    ++  cd
      :: ^-  _|~(nail *(like hull))
      :: %+  csym  %cd 
      %+  stag  %cd
      %+  ifix  [(jest 'cd ') (easy ~)]
      ;~  pose
        stip:neo
        %+  sear
          |=  [kets=(list *) =pith:neo]
          ^-  (unit pith:neo)
          =/  cwd  get:cwd:peel
          =/  up  (lent kets)
          ?:  (gth up (lent cwd))
            ~
          =.  cwd  (scag (sub (lent cwd) up) cwd)
          `(welp cwd pith)
        ;~(plug (star ket) (more fas spot:stip:neo))
      ==
    ++  csym
      |*  [term=* rul=rule]
      (stag term ;~(pfix (jest term) rul))
    --
  ++  shoe-ef
    |=  ef=shoe-effect:shoe
    ^+  run
    (emit %shoe ~[id] ef)
  ++  do 
    |=  =hull
    |^  ^+  run
    ?-    -.hull 
        %ls     (tree 1)
        %cd     abet:(set:cwd:peel pith.hull)
        %poke   (do-poke p.hull)
        %tree   (tree depth.hull)
        %commit   commit
        %pill     (make-pill (en-beam byk.bowl /neo/cod/std/src))
        %nuke
      =.  run   (poke-hood kiln-nuke/!>([dap.bowl |]))
      =.  run   commit
      %-  poke-hood
      ::
      =+  .^(=cone:clay %cx /(scot %p our.bowl)//(scot %da now.bowl)/domes)
      =/  =dome:clay  (~(gut by cone) [our.bowl q.byk.bowl] *dome:clay)
      =+  ((slog ?:(=(%live liv.dome) ~ ['kiln: desk not live' ~])) ~)
      :-  %kiln-rein
      !>([q.byk.bowl (~(put by ren.dome) dap.bowl &)])
    ::
        %show
      =/  =effect:sole  [%tan show:tell:peel]
      (shoe-ef %sole effect)
    ==
    ++  commit
      (emit %pass / %agent [our %hood] %poke %kiln-commit !>([q.byk.bowl |]))
    ++  poke-hood
      |=  =cage
      ^+  run
      (emit %pass / %agent [our %hood] %poke cage)
    ::
    ++  do-poke
      |=  =hoon
      =/  vax=vase
        %-  slap
        :_  hoon
        %+  with-faces:ford:neo  !>(..zuse)
        :~  neo/!>(neo)
            eny/!>(eny.bowl)
            now/!>(now.bowl)
            our/!>(our.bowl)
        ==
      =+  !<(=stud:neo (slot 2 vax))
      =.  vax  (slot 3 vax)
      (on-bush-move /$/$/xeno get:cwd:peel %poke stud vax)
   ++  tree
     |=  depth=@ud
      %-  shoe-ef  
      :-  %table  
      :+  (limo tas/%path tas/%code tas/%data tas/%node tas/%tree ~)
        (limo 40 40 40 6 6 ~)
      (desc:tell:peel depth)
    --
  --
--
