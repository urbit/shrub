/@  accel-diff
::
^-  firm:neo
=>
|%
++  run-hoon
  |=  [code=@t vax=vase]
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
      [%accel-cell %sig]
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
    ?+    stud  
        %accel-diff
      ::  XX  parsing logic that converts
      ::  (add a1 a2)
      =/  poke  !<(accel-diff vax)
      ?>  =(our ship.src):bowl
      :_  sta
      :~  :-  (welp here.bowl ~[[ud/row.poke] [ud/column.poke]])
          ?~  ref.poke
            [%make %accel-cell `!>([text.poke ~ ref.poke]) ~]
          =/  conf  (malt ~[[%ref u.ref.poke]])
          [%make %accel-cell `!>([text.poke ~ ref.poke]) conf]
      ==
    ::
        %gift
      :_  !>(~)
      =/  gift  !<(gift:neo vax)
      =/  g  -:~(tap by gift)
      ?<  =(%del +.g)
      =/  kid-pith  -:g

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
