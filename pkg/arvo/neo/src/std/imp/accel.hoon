/@  accel-diff
/@  accel-cell
::
^-  firm:neo
=>
|%
++  run-hoon
  |=  [code=@t ref=vase]
  ^-  (each vase tang)
  =/  code
    %-  crip
    :: (trip 10) = tape of newline
    :: to ensure user-error doesn't break evaluation
    (welp (trip code) (trip 10))
  %-  mule
  |.
  %+  slap
    (slop !>(..zuse) ref(p [%face %ref p.ref]))
  (ream code)
--
::
|%
++  state  %accel
++  poke  (sy %accel-diff %gift ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%ud |/%ud |]
      [%sig %sig] ::  FIXME: use %accel-cell when %z works
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo sta=vase *]
  ++  init
    |=  old=(unit vase)
    `(need old)
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?+    stud  !!
        %accel-diff
      ::  XX  parsing logic that converts
      ::  (add a1 a2)
      =/  poke  !<(accel-diff vax)
      ?>  =(our ship.src):bowl
      :_  sta
      :~  :-  (welp here.bowl ~[[ud/row.poke] [ud/column.poke]])
          ?~  ref.poke
            [%make %accel-cell `!>([text.poke ref.poke]) ~]
          =/  conf  (malt ~[[%ref u.ref.poke]])
          [%make %accel-cell `!>([text.poke ref.poke]) conf]
      ==
    ::
        %gift
      :_  !>(~)
      =/  gift  !<(gift:neo vax)
      %+  murn  ~(tap by gift)
      |=  [pith=(pole iota) =mode:neo]
      ^-  (unit card:neo)
      ?+  pith  !!
          [[%ud col=@] [%ud row=@] ~]       ~
          [[%ud col=@] [%ud row=@] %err ~]  ~
          [[%ud col=@] [%ud row=@] %out ~]  ~
          [[%ud col=@] [%ud row=@] %ref ~]
        =/  cell-pail  (~(got by kids.bowl) (snip `pith:neo`pith))
        =/  cell  !<(accel-cell q.cell-pail)
        =/  ref-vase  (~(got by kids.bowl) pith)  :: this probably doesn't work!
        ::=/  result  (run-hoon code.cell ref-vase)
        ~  :: XX
      ==
      ::  get kid from kids.bowl
      ::  get code from kid
      ::  get vase from kid/ref
      ::  =/  result  (run-hoon code vase)
      ::  make kid/err based on result
      ::  make kid/out based on result


      ::|=  [cell=accel-cell =bowl:neo]
      ::^-  (quip card:neo vase)
      ::=/  ref=(unit (pair pith cane:neo))
      ::  (~(get by deps.bowl) %ref)
      :::_  !>(cell)
      ::?~  ref  ~
      ::=/  vax=vase  q.pail.q.u.ref
      ::=/  res=(each vase tang)
      ::  (run-hoon code.cell vax)
      :::~  [(snoc here.bowl <kid> %err) %make %tang ?:(-.res `!>(~) `!>(p.res)) ~]
      ::    [(snoc here.bowl <kid> %out) %make %sig ?:(-.res `p.res `!>(~)) ~]
      ::==

    ==
  --
--
