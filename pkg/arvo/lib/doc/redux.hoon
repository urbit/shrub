|%
++  sell
  |=  vax=vase
  (~(deal us p.vax) q.vax)
++  us                                                  ::  prettyprinter
  =>  |%
      +$  cape  [p=(map @ud wine) q=wine]               ::
      +$  wine                                          ::
                $@  $?  %noun                           ::
                        %path                           ::
                        %type                           ::
                        %void                           ::
                        %wall                           ::
                        %wool                           ::
                        %yarn                           ::
                    ==                                  ::
                $%  [%mato p=term]                      ::
                    [%core p=(list @ta) q=wine]         ::
                    [%face p=term q=wine]               ::
                    [%list p=term q=wine]               ::
                    [%pear p=term q=@]                  ::
                    [%bcwt p=(list wine)]               ::
                    [%plot p=(list wine)]               ::
                    [%stop p=@ud]                       ::
                    [%tree p=term q=wine]               ::
                    [%unit p=term q=wine]               ::
                    [%name p=stud q=wine]               ::
                ==                                      ::
      --
  |_  sut=type
  ++  dash
    |=  [mil=tape lim=char lam=tape]
    ^-  tape
    =/  esc  (~(gas in *(set @tD)) lam)
    :-  lim
    |-  ^-  tape
    ?~  mil  [lim ~]
    ?:  ?|  =(lim i.mil)
            =('\\' i.mil)
            (~(has in esc) i.mil)
        ==
      ['\\' i.mil $(mil t.mil)]
    ?:  (lte ' ' i.mil)
      [i.mil $(mil t.mil)]
    ['\\' ~(x ne (rsh 2 i.mil)) ~(x ne (end 2 i.mil)) $(mil t.mil)]
  ::
  ++  deal  |=(lum=* (dish dole lum))
  ++  dial
    |=  ham=cape
    =+  gid=*(set @ud)
    =<  `tank`-:$
    |%
    ++  many
      |=  haz=(list wine)
      ^-  [(list tank) (set @ud)]
      ?~  haz  [~ gid]
      =^  mor  gid  $(haz t.haz)
      =^  dis  gid  ^$(q.ham i.haz)
      [[dis mor] gid]
    ::
    ++  $
      ^-  [tank (set @ud)]
      ?-    q.ham
          %noun      :_(gid [%leaf '*' ~])
          %path      :_(gid [%leaf '/' ~])
          %type      :_(gid [%leaf '#' 't' ~])
          %void      :_(gid [%leaf '#' '!' ~])
          %wool      :_(gid [%leaf '*' '"' '"' ~])
          %wall      :_(gid [%leaf '*' '\'' '\'' ~])
          %yarn      :_(gid [%leaf '"' '"' ~])
          [%mato *]  :_(gid [%leaf '@' (trip p.q.ham)])
          [%core *]
        =^  cox  gid  $(q.ham q.q.ham)
        :_  gid
        :+  %rose
          [[' ' ~] ['<' ~] ['>' ~]]
        |-  ^-  (list tank)
        ?~  p.q.ham  [cox ~]
        [[%leaf (rip 3 i.p.q.ham)] $(p.q.ham t.p.q.ham)]
      ::
          [%face *]
        =^  cox  gid  $(q.ham q.q.ham)
        :_(gid [%palm [['=' ~] ~ ~ ~] [%leaf (trip p.q.ham)] cox ~])
      ::
          [%list *]
        =^  cox  gid  $(q.ham q.q.ham)
        :_(gid [%rose [" " (weld (trip p.q.ham) "(") ")"] cox ~])
      ::
          [%bcwt *]
        =^  coz  gid  (many p.q.ham)
        :_(gid [%rose [[' ' ~] ['?' '(' ~] [')' ~]] coz])
      ::
          [%plot *]
        =^  coz  gid  (many p.q.ham)
        :_(gid [%rose [[' ' ~] ['[' ~] [']' ~]] coz])
      ::
          [%pear *]
        :_(gid [%leaf '%' ~(rend co [%$ p.q.ham q.q.ham])])
      ::
          [%stop *]
        =+  num=~(rend co [%$ %ud p.q.ham])
        ?:  (~(has in gid) p.q.ham)
          :_(gid [%leaf '#' num])
        =^  cox  gid
            %=  $
              gid    (~(put in gid) p.q.ham)
              q.ham  (~(got by p.ham) p.q.ham)
            ==
        :_(gid [%palm [['.' ~] ~ ~ ~] [%leaf ['^' '#' num]] cox ~])
      ::
          [%tree *]
        =^  cox  gid  $(q.ham q.q.ham)
        :_(gid [%rose [" " (weld (trip p.q.ham) "(") ")"] cox ~])
      ::
          [%unit *]
        =^  cox  gid  $(q.ham q.q.ham)
        :_(gid [%rose [" " (weld (trip p.q.ham) "(") ")"] cox ~])
      ::
          [%name *]
        :_  gid
        ?@  p.q.ham  (cat 3 '#' mark.p.q.ham)
        (rap 3 '#' auth.p.q.ham '+' (spat type.p.q.ham) ~)
      ==
    --
  ::
  ++  dish  !:
    |=  [ham=cape lum=*]  ^-  tank
    ~|  [%dish-h ?@(q.ham q.ham -.q.ham)]
    ~|  [%lump lum]
    ~|  [%ham ham]
    %-  need
    =|  gil=(set [@ud *])
    |-  ^-  (unit tank)
    ?-    q.ham
        %noun
      %=    $
          q.ham
        ?:  ?=(@ lum)
          [%mato %$]
        :-  %plot
        |-  ^-  (list wine)
        [%noun ?:(?=(@ +.lum) [[%mato %$] ~] $(lum +.lum))]
      ==
    ::
        %path
      :-  ~
      :+  %rose
        [['/' ~] ['/' ~] ~]
      |-  ^-  (list tank)
      ?~  lum  ~
      ?@  lum  !!
      ?>  ?=(@ -.lum)
      [[%leaf (rip 3 -.lum)] $(lum +.lum)]
    ::
        %type
      =+  tyr=|.((dial dole))
      =+  vol=tyr(sut lum)
      =+  cis=;;(tank .*(vol [%9 2 %0 1]))
      :^  ~   %palm
        [~ ~ ~ ~]
      [[%leaf '#' 't' '/' ~] cis ~]
    ::
        %wall
      :-  ~
      :+  %rose
        [[' ' ~] ['<' '|' ~] ['|' '>' ~]]
      |-  ^-  (list tank)
      ?~  lum  ~
      ?@  lum  !!
      [[%leaf (trip ;;(@ -.lum))] $(lum +.lum)]
    ::
        %wool
      :-  ~
      :+  %rose
        [[' ' ~] ['<' '<' ~] ['>' '>' ~]]
      |-  ^-  (list tank)
      ?~  lum  ~
      ?@  lum  !!
      [(need ^$(q.ham %yarn, lum -.lum)) $(lum +.lum)]
    ::
        %yarn
      [~ %leaf (dash (tape lum) '"' "\{")]
    ::
        %void
      ~
    ::
        [%mato *]
      ?.  ?=(@ lum)
        ~
      :+  ~
        %leaf
      ?+    (rash p.q.ham ;~(sfix (cook crip (star low)) (star hig)))
          ~(rend co [%$ p.q.ham lum])
        %$    ~(rend co [%$ %ud lum])
        %t    (dash (rip 3 lum) '\'' ~)
        %tas  ['%' ?.(=(0 lum) (rip 3 lum) ['$' ~])]
      ==
    ::
        [%core *]
      ::  XX  needs rethinking for core metal
      ::  ?.  ?=(^ lum)  ~
      ::  =>  .(lum `*`lum)
      ::  =-  ?~(tok ~ [~ %rose [[' ' ~] ['<' ~] ['>' ~]] u.tok])
      ::  ^=  tok
      ::  |-  ^-  (unit (list tank))
      ::  ?~  p.q.ham
      ::    =+  den=^$(q.ham q.q.ham)
      ::    ?~(den ~ [~ u.den ~])
      ::  =+  mur=$(p.q.ham t.p.q.ham, lum +.lum)
      ::  ?~(mur ~ [~ [[%leaf (rip 3 i.p.q.ham)] u.mur]])
      [~ (dial ham)]
    ::
        [%face *]
      =+  wal=$(q.ham q.q.ham)
      ?~  wal
        ~
      [~ %palm [['=' ~] ~ ~ ~] [%leaf (trip p.q.ham)] u.wal ~]
    ::
        [%list *]
      ?:  =(~ lum)
        [~ %leaf '~' ~]
      =-  ?~  tok
            ~
          [~ %rose [[' ' ~] ['~' '[' ~] [']' ~]] u.tok]
      ^=  tok
      |-  ^-  (unit (list tank))
      ?:  ?=(@ lum)
        ?.(=(~ lum) ~ [~ ~])
      =+  [for=^$(q.ham q.q.ham, lum -.lum) aft=$(lum +.lum)]
      ?.  &(?=(^ for) ?=(^ aft))
        ~
      [~ u.for u.aft]
    ::
        [%bcwt *]
      |-  ^-  (unit tank)
      ?~  p.q.ham
        ~
      =+  wal=^$(q.ham i.p.q.ham)
      ?~  wal
        $(p.q.ham t.p.q.ham)
      wal
    ::
        [%plot *]
      =-  ?~  tok
            ~
          [~ %rose [[' ' ~] ['[' ~] [']' ~]] u.tok]
      ^=  tok
      |-  ^-  (unit (list tank))
      ?~  p.q.ham
        ~
      ?:  ?=([* ~] p.q.ham)
        =+  wal=^$(q.ham i.p.q.ham)
        ?~(wal ~ [~ [u.wal ~]])
      ?@  lum
        ~
      =+  gim=^$(q.ham i.p.q.ham, lum -.lum)
      ?~  gim
        ~
      =+  myd=$(p.q.ham t.p.q.ham, lum +.lum)
      ?~  myd
        ~
      [~ u.gim u.myd]
    ::
        [%pear *]
      ?.  =(lum q.q.ham)
        ~
      =.  p.q.ham
        (rash p.q.ham ;~(sfix (cook crip (star low)) (star hig)))
      =+  fox=$(q.ham [%mato p.q.ham])
      ?>  ?=([~ %leaf ^] fox)
      ?:  ?=(?(%n %tas) p.q.ham)
        fox
      [~ %leaf '%' p.u.fox]
    ::
        [%stop *]
      ?:  (~(has in gil) [p.q.ham lum])  ~
      =+  kep=(~(get by p.ham) p.q.ham)
      ?~  kep
        ~|([%stop-loss p.q.ham] !!)
      $(gil (~(put in gil) [p.q.ham lum]), q.ham u.kep)
    ::
        [%tree *]
      =-  ?~  tok
            ~
          [~ %rose [[' ' ~] ['{' ~] ['}' ~]] u.tok]
      ^=  tok
      =+  tuk=*(list tank)
      |-  ^-  (unit (list tank))
      ?:  =(~ lum)
        [~ tuk]
      ?.  ?=([n=* l=* r=*] lum)
        ~
      =+  rol=$(lum r.lum)
      ?~  rol
        ~
      =+  tim=^$(q.ham q.q.ham, lum n.lum)
      ?~  tim
        ~
      $(lum l.lum, tuk [u.tim u.rol])
    ::
        [%unit *]
      ?@  lum
        ?.(=(~ lum) ~ [~ %leaf '~' ~])
      ?.  =(~ -.lum)
        ~
      =+  wal=$(q.ham q.q.ham, lum +.lum)
      ?~  wal
        ~
      [~ %rose [[' ' ~] ['[' ~] [']' ~]] [%leaf '~' ~] u.wal ~]
    ::
        [%name *]
      $(q.ham q.q.ham)
    ==
  ::
  ++  doge
    |=  ham=cape
    =-  ?+  woz  woz
          [%list * [%mato %'ta']]  %path
          [%list * [%mato %'t']]   %wall
          [%list * [%mato %'tD']]  %yarn
          [%list * %yarn]          %wool
        ==
    ^=  woz
    ^-  wine
    ?.  ?=([%stop *] q.ham)
      ?:  ?&  ?=  [%bcwt [%pear %n %0] [%plot [%pear %n %0] [%face *] ~] ~]
                q.ham
              =(1 (met 3 p.i.t.p.i.t.p.q.ham))
          ==
        [%unit =<([p q] i.t.p.i.t.p.q.ham)]
      q.ham
    =+  may=(~(get by p.ham) p.q.ham)
    ?~  may
      q.ham
    =+  nul=[%pear %n 0]
    ?.  ?&  ?=([%bcwt *] u.may)
            ?=([* * ~] p.u.may)
            |(=(nul i.p.u.may) =(nul i.t.p.u.may))
        ==
      q.ham
    =+  din=?:(=(nul i.p.u.may) i.t.p.u.may i.p.u.may)
    ?:  ?&  ?=([%plot [%face *] [%face * %stop *] ~] din)
            =(p.q.ham p.q.i.t.p.din)
            =(1 (met 3 p.i.p.din))
            =(1 (met 3 p.i.t.p.din))
        ==
      :+  %list
        (cat 3 p.i.p.din p.i.t.p.din)
      q.i.p.din
    ?:  ?&  ?=  $:  %plot
                    [%face *]
                    [%face * %stop *]
                    [[%face * %stop *] ~]
                ==
                din
            =(p.q.ham p.q.i.t.p.din)
            =(p.q.ham p.q.i.t.t.p.din)
            =(1 (met 3 p.i.p.din))
            =(1 (met 3 p.i.t.p.din))
            =(1 (met 3 p.i.t.t.p.din))
        ==
      :+  %tree
        %^    cat
            3
          p.i.p.din
        (cat 3 p.i.t.p.din p.i.t.t.p.din)
      q.i.p.din
    q.ham
  ::
  ++  dole
    ^-  cape
    =+  gil=*(set type)
    =+  dex=[p=*(map type @) q=*(map @ wine)]
    =<  [q.p q]
    |-  ^-  [p=[p=(map type @) q=(map @ wine)] q=wine]
    =-  [p.tez (doge q.p.tez q.tez)]
    ^=  tez
    ^-  [p=[p=(map type @) q=(map @ wine)] q=wine]
    ?-    sut
        %noun      [dex sut]
        %void      [dex sut]
        [%atom *]  [dex ?~(q.sut [%mato p.sut] [%pear p.sut u.q.sut])]
        [%cell *]
      =+  hin=$(sut p.sut)
      =+  yon=$(dex p.hin, sut q.sut)
      :-  p.yon
      :-  %plot
      ?:(?=([%plot *] q.yon) [q.hin p.q.yon] [q.hin q.yon ~])
    ::
        [%core *]
      =+  yad=$(sut p.sut)
      :-  p.yad
      =+  ^=  doy  ^-  [p=(list @ta) q=wine]
          ?:  ?=([%core *] q.yad)
            [p.q.yad q.q.yad]
          [~ q.yad]
      :-  %core
      :_  q.doy
      :_  p.doy
      %^  cat  3
        %~  rent  co
        :+  %$  %ud
        %-  ~(rep by (~(run by q.r.q.sut) |=(tome ~(wyt by q.+<))))
        |=([[@ a=@u] b=@u] (add a b))
      %^  cat  3
        ?-(r.p.q.sut %gold '.', %iron '|', %lead '?', %zinc '&')
      =+  gum=(mug q.r.q.sut)
      %+  can  3
      :~  [1 (add 'a' (mod gum 26))]
          [1 (add 'a' (mod (div gum 26) 26))]
          [1 (add 'a' (mod (div gum 676) 26))]
      ==
    ::
        [%hint *]
      =+  yad=$(sut q.sut)
      ?.  ?=(%know -.q.p.sut)  yad
      [p.yad [%name p.q.p.sut q.yad]]
    ::
        [%face *]
      =+  yad=$(sut q.sut)
      ?^(p.sut yad [p.yad [%face p.sut q.yad]])
    ::
        [%fork *]
      =+  yed=(sort ~(tap in p.sut) aor)
      =-  [p [%bcwt q]]
      |-  ^-  [p=[p=(map type @) q=(map @ wine)] q=(list wine)]
      ?~  yed
        [dex ~]
      =+  mor=$(yed t.yed)
      =+  dis=^$(dex p.mor, sut i.yed)
      [p.dis q.dis q.mor]
    ::
        [%hold *]
      =+  hey=(~(get by p.dex) sut)
      ?^  hey
        [dex [%stop u.hey]]
      ?:  (~(has in gil) sut)
        =+  dyr=+(~(wyt by p.dex))
        [[(~(put by p.dex) sut dyr) q.dex] [%stop dyr]]
      =+  rom=$(gil (~(put in gil) sut), sut ~(repo ut sut))
      =+  rey=(~(get by p.p.rom) sut)
      ?~  rey
        rom
      [[p.p.rom (~(put by q.p.rom) u.rey q.rom)] [%stop u.rey]]
    ==
  ::
  ++  duck  (dial dole)
  --

++  run
  =|  res=(map term type)
  |=  ty=type
  ^+  res
  |-  ^+  res 
  ?-    ty
      %noun      res
      %void      res
      [%atom *]  res
      [%cell *]
    %-  ~(uni by res)
    (~(uni by $(ty p.ty)) $(ty q.ty))
  ::
      [%core *]
    %-  =-  ~(uni by -)
        ?.  ?=(%gold r.p.q.ty)
          res
        $(ty p.ty)
    ^+  res
    %+  roll  ~(tap by q.r.q.ty)
    |=  [[term =tome] out=_res]
    %-  ~(uni by out)
    %+  roll
      ~(tap by q.tome)
    |=  [[name=term =hoon] o=_out]
    ^-  (map term type)
    ~|  term=term
    (~(put by o) name ~(play ~(et ut ty) ~[name] ~))
  ::
      [%face *]
    ?^  p.ty
      ~
    (~(put by res) p.ty q.ty)
  ::
      [%fork *]
    %=    $
        ty
      =/  tines  ~(tap in p.ty)
      ?~  tines
        %void
      |-  ^-  type
      ?~  t.tines
        i.tines
      (~(fuse ut $(tines t.tines)) i.tines)
    ==
  ::
      [%hint *]  
    ~&  p.ty
      $(ty q.ty)
      [%hold *]  $(ty ~(repo ut ty))
  ==
++  find-notes
  !:
  =|  res=[space=(map cuff type) by-type=(map type cuff) helps=(map cuff crib)]
  =|  loc=cuff
  =/  prev=type  %void
  |=  ty=type
  ^+  res
  =.  space.res  (~(put by space.res) loc ty)
  ?:  =(prev ty)
    ~|  %same-crashing
    !!
  |-  ^+  res
  =*  loop  $
  ?-    ty
      %noun      res
      %void      res
      [%atom *]  res
      [%cell *]
    =.  res  $(ty p.ty)
    $(ty q.ty)
  ::
      [%core *]
    ?:  =(%wet q.p.q.ty)
      ~&  %wet-ignoring
      res
::  %+  welp
::    ?.  ?=(%gold r.p.q.ty)
::      ~
::    ~  :: $(ty p.ty)
    ^+  res
    =/  chaps  ~(tap by q.r.q.ty)
    |-  =*  loop-chap  $
    ?~  chaps
      res
    =/  [dude=term =tome]  i.chaps
    =/  arms  ~(tap by q.tome)
    |-  =*  loop-arm  $
    ?~  arms
      loop-chap(chaps t.chaps)
    =/  [name=term =hoon]  i.arms
    ~?  =(name %icon)
      hoon/hoon
    =?  
    ?.  &(?=(%note -.hoon) ?=(%help -.p.hoon))
      =/  nex  ~(play ~(et ut ty) ~[name] ~)
      =.  res  
        %=  loop
          ty  nex
          space.res  (~(put by space.res) (snoc loc funk/name) nex)
          loc        (snoc loc funk/name)
        ==
      loop-arm(arms t.arms)
    =/  =help  p.p.hoon
    =>  .(ty `type`ty)
    =.  ty  (edit-arm ty dude name q.hoon)
    ?>  ?=(%core -.ty)
    =/  nex  ~(play ~(et ut ty) ~[name] ~)
    =.  res
      =.  loc  (welp loc cuff.help)
      %=  loop
        ty         nex
        space.res  (~(put by space.res) loc nex)
        helps.res  (~(put by helps.res) loc crib.help)
      ==
    loop-arm(arms t.arms)

    :: loop(ty [%hold p.ty hoon])
  ::
      [%face *]
::  ?@  p.ty
::    =.  loc        (snoc loc frag/p.ty)
::    =.  space.res  (~(put by space.res) loc q.ty)
::    $(ty q.ty)
    $(ty q.ty)
  ::
      [%fork *]
    %=    $
        ty
      =/  tines  ~(tap in p.ty)
      ?~  tines
        %void
      |-  ^-  type
      =*  inner  $
      ?~  t.tines
        i.tines
      =/  res=(unit type)
        (mole |.((~(fuse ut inner(tines t.tines)) i.tines)))
      (fall res %void)
    ==
  ::
      [%hint *]  
    ?.  ?=(%help -.q.p.ty)
      $(ty q.ty)
    =/  =help  p.q.p.ty
    =.  helps.res  (~(put by helps.res) (welp loc cuff.help) crib.help)
    $(ty q.ty)
  ::
      [%hold *]  $(ty ~(repo ut ty))
  ==
++  edit-arm
  |=  [ty=type dude=term arm=term hon=hoon]
  ^-  type
  ?>  ?=(%core -.ty)
  =/  chap  (~(got by q.r.q.ty) dude)
  =.  q.chap   (~(put by q.chap) arm hon)
  ty(q.r.q (~(put by q.r.q.ty) dude chap))


--
