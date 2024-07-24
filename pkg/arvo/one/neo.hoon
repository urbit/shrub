:: n: Prelapsarian root shrub
::
::   Reserved namespace
::
::     /cod/ - Build system
::     /int/ - interfaces

=/  prelude  !>(.)
|=  neo-args=[ford=(list [=stud:neo txt=@t]) src=(axal:neo [kind=?(%hoon %txt) src=@t]) user=(list [=pith:neo =vial:neo])]
=>
  ::  |=  init=[build=(list [=post:neo txt=@t]) user=(list card:neo)]
  |%
  ++  riff-poem
    ^-  poem:neo
    [%riff *(set stud:neo)]
  ++  wave-poem
    ^-  poem:neo
    [%wave *(set stud:neo)]
  ++  riff
    => 
    |%
    ++  card  card:neo
    --
    ^-  kook:neo
    |%
    ++  state  pro/%vase
    ++  poke   *(set stud:neo)
    ++  kids  ~
    ++  deps  ~
    ++  form
      ^-  form:neo
      |_  [=bowl:neo =aeon:neo =pail:neo]
      +*  sta  !<([cache=(unit vase) ~] state-vase)
      ++  poke
        |=  pail:neo  
        ^-  (quip card:neo pail:neo)
        `pail
      ::
      ++  init
        |=  old=(unit pail:neo)
        ^-  (quip card:neo pail:neo)
        `(need old)
      --
    --
  ++  verb  &
  ++  f   fern:t
  ++  b   bush:t
  ++  n   neo
  +$  state-0
    $:  following=(jug pith:n pith:n)
        ripe=_|
        booting=_&
        ~
    ==
  ++  is-parent
    |=  [parent=pith:n kid=pith:n]
    ^-  ?
    ?~  parent  &
    ?~  kid     |
    ?.  =(i.parent i.kid)
      |
    $(parent t.parent, kid t.kid)


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
      =.  muck  (~(put of muck) p.i.sed [poem pail]:q.i.sed)
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
=|  =step:f
|_  =mien:fern:t  
++  plow  ~(. ^plow farm.mien)
++  abet
  =/  s=step:f  step
  =.  step  *step:f
  [s this]
::
++  this  .
++  our  our.mien
++  here  pfix.mien
++  boot
  ^-  [step:f _this]
  |^  ^-  [step:f _this]
  =.  seed.step  (~(put of seed.step) (~(pith press:n imp/%riff) %out) %grow ~ vase/!>(riff) riff-poem)
  =.  seed.step  (~(put of seed.step) ~ %grow ~ sig/!>(~) riff-poem)
  =.  seed.step  (~(put of seed.step) #/cod/reef %grow ~ vase/prelude riff-poem)
  =/  pit=pith:n  #/$/boot
  =.  seed.step  (hatch seed.step)
  =.  io.step  (snoc io.step `gift:f`[%drip ~])
  abet
  ::
  ++  make-riff
    |=  [=post:n riff=vase]
    ^-  card:b
    [(pess post) %make %riff `vase/riff sig/!>(~)]
  ::
  ++  pess
    |=  =post:n
    ^-  pith:n
    (~(pith press:n post) %out)
  ::
  ++  slap-riff
    |=  [=post:n hon=hoon]
    (make-riff post (slap prelude hon))
  ::
  ++  hatch
    |=  sed=seed:f
    ^+  sed
    =<  +
    %-  roll
    :_  |=  [=card:b idx=@ out=_sed]
        ^-  [@ seed:f]
        =/  =note:t
          [%grow ~ bush-card/!>(card) [%bush-card *(set stud:neo)]]
        [+(idx) (~(put of out) #/$/boot/[ud/idx] note)]
    ^-  (list card:b)
    %+  welp
      :~  [(slap-riff pro/%hoon !,(*hoon @t))]
          [(slap-riff pro/%txt !,(*hoon @t))]
          [(slap-riff pro/%disk !,(*hoon disk:neo))]
          ::[(~(pith press:n imp/%desk) (make-riff (slap prelude !,(*hoon desk))))]
      ==
    %+  welp
      ::  ford combinators
      %+  turn   ford.neo-args
      |=  [=stud:n txt=@t]
      =;  hon=hoon
        (slap-riff imp/stud hon)
      ~|  stud=stud
      %-  road  |.
      =/  wer=path  (~(path press:n imp/stud) %src)
      =+  vaz=(vang & (pout wer))
      (scan (trip txt) (full (ifix [gay gay] tall:vaz)))
      :: fill with files
    :~  :+  #/cod/std/src  %many
        %+  turn  ~(tap of src.neo-args)
        |=  [=pith:neo kind=?(%hoon %txt) src=@t]
        ^-  card:b
        :: ?.  ?=([%pro @ ~] pith)
          :: ~
        [pith %make kind `kind^!>(src) sig/!>(sig)]
        :: then, desk shrub
      ::
        [#/cod/std %make %ford-desk `disk/!>(`disk:n`~) crew/!>((one:crew:u %reef #/cod/reef))]

    ==
  --
++  call
  ~>  %bout.[1 %neo-call]
  |=  =note:fern:t
  ^-  [step:f _this]
  ?-  -.note
    %bush  abet:abet:(arvo +.note)
    %hear  (hear +.note)
    %drip  drip
    %have  !!
  ==
++  drip
  ^-  [step:f _this]
  ?:  booting
    =/  =epic:n
      (need (~(look plow farm.mien) [%z /]))
    :: %-  print:(epic:etch epic)
    %-  (slog leaf/"Checking for more boot cards" ~)
    ?~  nex=(~(pry of epic) #/$/boot)
      ~&  >  %finished-booting
      [step this(booting |)]
    ~&  drip-key=key.u.nex
    =.  seed.step  (~(put of seed.step) #/$/boot/[key.u.nex] %cull ~)
    =/  =saga:n  val.u.nex
    =/  =tale:n   q.saga
    =/  =pail:n   q.tale
    =/  vax=vase  q.pail
    =+  !<(=card:b vax)
    :: ~&  larval/[step=`@`+:key.u.nex dst=p.card]
    =.  this
      abet:(arvo #/$/xeno/[da/now.mien] card)
    =.  io.step  (snoc io.step %drip ~)
    :: %-  print:(seed:etch seed.step)
    abet
  ~&  %neo-funny-drip
  abet
  
++  hear
  |=  =hunt:n 
  ^-  [step:f _this]
  abet
++  blow
  |=  [need=curb:n have=stud:n]
  ^-  ?
  ?+  -.need   ~|(curb-not-supported/-.need !!)
      %any            &
      %or             (lien p.need |=(curb:n (blow +< have)))
      ?(%pro %only)   =(p.need have)
  ==
++  puff
  |=  [want=stud:n role=(unit stud:n) have=tale:n]
  ^-  (unit idea:n)
  =;  pal=(unit pail:n)
    ?~  pal  ~
    `[[*aeon:n have] ~ u.pal]
  ?:  =(want %pail)
    `q.have
  ?:  =(want p.q.have)
    `q.have
  ?:  =(want %sig)
    `sig/!>(~)
  =/  rol=stud:n
    (fall role %$)
  ?:  =(1 1) :: can=(~(get by con.dive) [p.q.have rol want])
    :: ~&  missing-can/[p.q.have rol want]
    ~
  ~
::=/  conv  run:~(do con u.can)
::~|  dead-horse/[p.q.have rol want u.can]
:::+  ~  want
::%+  slam  conv
::?:  =(p.q.have %vase)
::  !>(q.q.q.have)
::q.q.q.have
::
++  plag
  =|  rol=(unit stud:n)
  |=  [want=curb:n have=tale:n]
  ^-  (unit idea:n)
  =*  loop   $
  =/  =stud:n  p.q.have
  =/  hav=saga:n  [*aeon:n have]
  ?-    -.want
      %pro
    (puff p.want rol have)
  ::
      %rol
    $(rol `p.want, want q.want)
  ::
      %only
    ?.  =(p.q.have p.want)
      ~
    `[hav ~ q.have]
  ::
      %any
    ?>  =(~ rol) :: XX: not neccessary, but wat means
    `[hav ~ q.have]
  ::
      %not
    =/  r  rol
    ?.  =(~ loop(want p.want))
      ~
    =.  rol  r
    loop(want q.want)
  ::
      %or
    |-
    ?~  p.want
      ~
    =/  r  rol
    =/  nex  loop(want i.p.want)
    =.  rol  r
    ?^  nex
      `u.nex
    $(p.want t.p.want)
  ==
::
::?.  (~(has by con.fiesta) [p.have want])
::  ~
::
::=/  conv   run:~(do con (~(got by con.fiesta) [p.have want]))
::`[want (slam conv q.have)]
::
++  scion
  |=  [want=lads:n =pith:n =tale:n]
  ^-  (unit idea:n)
  ?~  pis=(find:peon:n pith ~(key by want))
    ~
  =/  =lash:n  (~(got by want) u.pis)
  (plag state.lash tale)
::
++  moor
  |=  [want=quay:n =pith:n]
  ^-  (unit lore:n)
  =/  =care:n  (get-care:quay:n want)
  =/  muk  (grab-care care pith)
  ?:  &(=(care %x) =(muk *muck:n))
    ~
  =;  [fail=(set pith:n) res=(list (pair pith:n idea:n))]
    :: ?.  =(~ fail)
      :: ~&  fail-moor/fail
      :: ~
    ~?  !=(~ fail)
      fail/fail
    `(~(gas of *lore:n) res)
  %+  roll  ~(tap by ~(tar of:n muk))
  |=  [[=pith:n =tale:n] [fail=(set pith:n) res=(list (pair pith:n idea:n))]]
  ^+  +<+
  ?:  =(pith ~)
    ?~  rot=(plag state.p.want tale)
      [(~(put in fail) pith) res]
    [fail :_(res [*pith:n u.rot])]
  ?~  q.want
    [(~(put in fail) pith) res]
  ?~  ion=(scion q.u.q.want pith tale)
    [(~(put in fail) pith) res]
  [fail :_(res [pith u.ion])]
::
++  husk
  |_  =stud:n
  ++  dock
    ^-  dock:n
    [state poke kids]:kook
  ::
  ++  pith
    ^-  pith:n
    (~(pith press:n imp/stud) %out)
  ++  has  !=(~ (grab pith))
  ++  vase
    ^-  ^vase
    ~|  husk/stud
    q:(need (grab pith))
  ++  is-bunted
    (~(nest ut -:!>(~)) | p:vase)
  ++  default-kook
    ^-  kook:n
    |%
    ++  state  pro/stud
    ++  poke   (sy stud ~)
    ++  kids   *kids:n
    ++  deps   *deps:n
    ++  form
      ^-  form:n
      |_  [=bowl:n =aeon:n pal=pail:n]
      ++  poke
        |=  =pail:n
        ^-  (quip card:n pail:n)
        ?>  =(p.pail stud)
        `pail
      ++  init
        |=  pal=(unit pail:n)
        ^-  (quip card:n pail:n)
        `(need pal)
      --
    --
  ::
  ++  kook
    ^-  kook:n
    ~|  kook/pith
    ?.  has
      default-kook
    =/  vax  vase
    ?:  is-bunted
      default-kook
    !<(kook:n vax)
  ++  is-plot
    (~(nest ut -:!>(*plot:n)) | p:vase)
  ++  plot
    ^-  (unit plot:n)
    ?.  is-plot
      ~
    `!<(plot:n vase)
  ++  wire
    %+  welp  /husk/stud
    (pout pith)
  --
++  sys-pith  #/$/sys
++  grab
  |=  =pith:n
  ^-  (unit pail:n)
  =/  new  (~(get of seed.step) pith)
  ?:  &(?=(^ new) ?=(%grow -.u.new))
    `pail.u.new
  ?~  res=(look:plow %x pith)
    ~
  ?~  val=(~(get of u.res) /)
    ~
  `q.q.u.val
++  grab-care
  |=  =hunt:n
  ^-  muck:n
  =/  =muck:n
    ?~  res=(look:plow hunt)
      *muck:n
    %-  ~(run of u.res)
    |=  =saga:n
    ^-  tale:n
    q.saga
  =/  new  (~(dip of seed.step) pith.hunt)
  =.  new
    ?+  care.hunt  !!
      %x   new(kid ~)
      %y   ~(snip of new)
      %z   new
    ==
  =/  new=(list [=pith:n =note:t])
    ~(tap of new)
  |-  
  ?~  new
    muck
  %=    $
      new  t.new
      muck
    ?-  -.note.i.new
      %grow   (~(put of muck) pith.i.new [*poem:n pail.note.i.new])
      %cull   (~(del of muck) pith.i.new)
    ==
  ==
::
++  arvo
  =|  =block:n
  ::  callstack
  =|  $:  next=(list card:b)
          down=(list move:n)  :: pending moves for children
          up=(list move:n)    :: pending moves for uncles
          =gift:n             :: changelist not gifted
      ==
  |=  =move:b
  :: =/  src=name:n  (de-pith:name:n p.move)
  =/  [src=pith:n dst=pith:n]  [p p.q]:move
  =/  init=[src=pith:n dst=pith:n]
    [p p.q]:move
  =/  init-move  move
  =/  here  dst.init
  :: ?>  =(our.mien ship.dst.init)
  ::  XX: blocking semantives
  =<  (start move)
  !.
  |%
  ++  grow
    |=  [=pith:n =tale:n]
    =.  seed.step  (~(put of seed.step) pith %grow ~ q.tale p.tale)
    arvo
  ++  abet  
    this
  ++  arvo  .
  ++  start
    |=  =move:b
    ^+  arvo
    ?-    -.q.q.move
        %poke  (apply move)
        %cull  (apply move)
  ::
        %make
      =/  =crew:n
        ?:  =(p.xtra.q.q.move %crew)
          !<(=crew:n q.xtra.q.q.move)
        *crew:n
      =,  move
      (apply p p.q %make code.q.q init.q.q crew)
  ::
        %many
      =.  cards.q.q.move  (turn cards.q.q.move |=(c=card:b `card:b`c(p `pith:neo`(welp p.q.move p.c))))
      ?>  ?=(^ cards.q.q.move)
      =.  next  t.cards.q.q.move
      (start p.move i.cards.q.q.move)
  ==
  ++  apply
    |=  =move:n
    ?.  =(~ err.block)
      arvo
    =:  src   p.move   
        here  p.q.move
      ==
    ~|  [src=src here=here]
    ?+  -.q.q.move  !!
      %make  (make +.q.q.move)
      %poke  (poke +.q.q.move)
      %cull  cull
    ==
  ++  make
    |=  [code=stud:n init=(unit pail:n) =crew:n]
    ^+  arvo
    =|  =dock:n  :: XX: wrong, fix
    =/  wav=pail:n  (fall (grab %int here) wave/!>(`wave:n`[code dock crew &]))
    ?>  =(%wave p.wav)
    =/  =kook:n  ~(kook husk code)  
    =/  =band:n  deps:kook
    =+  !<(=wave:n q.wav)
    =.  code.wave  code  :: XX: api change req
    =.  live.wave  &  :: will turn off again if invalid
    =^  bad=(set term)  arvo
      (jazz crew band)
    ?.  =(~ bad)
      ~|  make-no-dep/~(tap in bad)
      !!
    =.  arvo  (dance crew band)
    =.  crew.wave  crew :: XX: check
    =/  =poem:n
      [code poke:kook]
    =.  arvo  (grow int/here wave-poem wave/!>(wave))
    =^  cards=(list card:n)  arvo 
      (soft-surf |.(su-abet:(su-make:surf init)))
    ::  %-  print:(cards:etch cards)
    :: %-  print:(seed:etch seed.step)
    (ingest cards)
  ++  jazz :: XX: fix
    =|  bad=(set term)
    |=  [=crew:n =deps:n]
    ^+  [bad arvo]
    [bad arvo]
  ++  dance
    |=  [=crew:n =band:n]
    ^+  arvo
    arvo
  ::
  ++  ingest
    |=  caz=(list card:n)
    =/  =pith:n  (welp pfix.mien here)
    =.  up
      %+  welp  up
      %+  murn  caz
      |=  =card:n
      ^-  (unit move:n)
      ?:  (is-parent pith p.card)
        ~
      `[pith card]
    =.  down
      %-  welp
      :_  down
      %+  murn  caz
      |=  =card:n
      ^-  (unit move:n)
      ?.  (is-parent pith p.card)
        ~
      `[pith card]
    :: ~&  %down
    ::k%-  print:(cards:etch (turn down tail))
    work
  ::
  ++  work
    ^+  arvo
    |-  ^+  arvo
    ?^  err.block
      arvo
    ?~  down
      plunder
    =/  nex=move:n  i.down
    =/  new-arvo  (apply:arvo(down t.down) nex) :: XX: weird compiler?
    $(arvo new-arvo)
  ::
  ++  plunder :: XX: TODO
    ^+  arvo
    ?~  next
      arvo
    (start:arvo(next t.next) p.move i.next)
  ::
  ++  poke
    |=  pok=pail:n
    ^+  arvo
    arvo
  ++  cull
    ^+  arvo
    arvo
  ++  soft-surf
    |=  tap=(trap (quip card:n _arvo))
    ^-  (quip card:n _arvo)
    ::  do not virtualise fastboot
    ?:  =(1 1)
      (tap)
    :: ?:  &(!ripe =(sys-init)
      :: (tap)
    =/  res=(each (quip card:n _arvo) tang)
      (mule tap)
    ?:  ?=(%& -.res)
      p.res
    %-  (slog leaf/"wipeout {<here>}" p.res)
    =.  err.block  `[%goof p.res]
    `arvo
  ++  surf
    =/  wav  (need (grab %int here))
    =+  !<(=wave:n q.wav)
    =|  cards=(list card:n)
    =/  =kook:n  ~(kook husk code.wave)
    =.  dock.wave  ~(dock husk code.wave)
    ?.  live.wave
      ~|  dead-wave/here
      !!
    |%
    ++  su-core  .
    ++  su-emil  |=(caz=(list card:n) su-core(cards (welp cards caz)))
    ++  su-bowl
      =/  hare  (welp pfix.mien here)
      ^-  bowl:n
      :*  [our.mien src]
          our.mien
          hare
          hare
          now.mien
          eny.mien
          su-deps
          su-kids
      ==
    ++  su-tale
      ^-  tale:n
      (fall (~(get of su-muck) here) *tale:n)
    ++  su-pail  q:su-tale
    ++  su-muck  (reap farm.mien seed.step)
    ++  su-kids
      =/  kids  kids:kook
      ?~  kids
        *muck:n
      %-  ~(gas of *muck:n)
      =/  child   (~(dip of su-muck) here)
      :: %-  print:(muck:etch child)
      %+  murn  ~(tap by ~(tar of:n child))
      |=  [=pith:n =tale:n]
      ^-  (unit [pith:n tale:n])
      ?~  ion=(scion q.u.kids pith tale)
        ~
      `[pith p.tale pail.u.ion]
    ++  su-deps
      :: =-  ((slog (deps:dbug:n -) ~) -)
      %-  ~(gas by *(map term [pith lore:n]))
      ^-  (list [term pith lore:n])
      %+  murn  ~(tap by deps:kook)
      |=  [=term =deed:n =quay:n]
      ^-  (unit [^term pith:n lore:n])
      =/  dep=(unit pith)  (~(get by crew.wave) term)
      =/  req  ?@(deed deed req.deed)
      ?~  dep
        ~|  invariant-missing-required-conf/term
        ?<  req
        ~
      =/  =care:n  (get-care:quay:n quay)
      ?~  lor=(moor quay u.dep)
        :: ~|  seed=~(key by ~(tar of (~(dip of seed.step) (scag 4 u.dep)))
        ~|  lost-moor/[here=here dep=term pith=u.dep code=code.wave]
        ?<  req
        `[term u.dep *lore:n]
::      %-  (slog term (epic:dbug:n epic) ~)
      `[term u.dep u.lor]
    ::
    ++  su-form  ~(. form:kook [su-bowl *aeon:n su-pail])
    ++  su-poem
      [code.wave poke:kook]
    ++  su-abet ::  TODO: bump
      :: =.  tide  (~(put of:n tide) here wave)
      [cards arvo]
    ++  su-make
      |=  init=(unit pail:n)
      =/  [cards=(list card:n) new=pail:n]
        (init:su-form init)
      =.  su-core  (su-emil cards)
      (su-grow new)
    ++  su-grow
      |=  =pail:n
      ^+  su-core
::    ?.  (blow state:kook p.pail)
::      (mean leaf/"Returned bad state stud, wanted {<state.kook>}, have {<p.pail>}" ~)
      =.  arvo  (grow here su-poem pail)
      su-core
    ::
    ++  su-give
      |=  =gift:n
      ?.  (~(has in poke.dock.wave) %gift)
        ::  ~&  skipping-give/here
        su-core
      (su-poke gift/!>(gift))
    ::
    ++  su-poke
      |=  =pail:n
      ^+  su-core
      =?  live.wave  =(p.pail %dead)
        =+  !<(dead=term q.pail)
        ?~  dep=(~(get by deps:kook) dead)
          &
        =/  [=deed:n =quay:n]  u.dep
        ?@  deed  !deed
        !req.deed
      ?.  (~(has in poke.dock.wave) p.pail)
        ?:  ?=(%ack p.pail)
          %.  su-core
          =+  !<(ack=(unit quit:n) q.pail)
          ?~  ack
            same
          (slog (print-quit:n u.ack))
        ?:  |(=(%dead p.pail) =(%rely p.pail))
          su-core
        (mean leaf/"no support for {<p.pail>}" ~)
      =/  [caz=(list card:n) new=pail:n]
        (poke:su-form pail)
      =.  su-core  (su-emil caz)
      ?:  =(new su-pail)
        su-core
      (su-grow new)
    --
  --
--
