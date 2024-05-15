/@  accel-cell
::
^-  firm:neo
=>
|%
++  render-hoon
  |=  [code=@t ref=vase]
  ^-  (each vase tang)
  =/  code
    %-  crip
    :: (trip 10) = tape of newline
    :: to ensure that lack of newline at end
    :: of file doesn't break evaluation
    (welp (trip code) (trip 10))
  %-  mule
  |.
  %+  slap
    (slop !>(..zuse) ref(p [%face %ref p.ref]))
  (ream code)
--
|%
++  state  %accel-cell
++  poke  (sy %rely ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [&/%out |]
    [%sig %sig]
      :-  [&/%err |]
    [%tang %sig]
  ==
++  deps
  %-  ~(gas by *deps:neo)
  :~  [%ref | [%pail %sig] ~]
  ==
::
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?.  =(stud %rely)  [~ state-vase]
    :_  state-vase
    :~  [(snoc here.bowl %err) %make %tang ?:(-.res `!>(~) `!>(p.res)) ~]
        [(snoc here.bowl %out) %make %sig ?:(-.res `p.res `!>(~)) ~]
    ==
    :::~  [(snoc here.bowl %out) %make stud `vax ~]
    ::==
  ++  init
    |=  old=(unit vase)
    =/  cell  !<(accel-cell (need old))
    =/  ref=(unit (pair pith cane:neo))
      (~(get by deps.bowl) %ref)
    ?~  ref  `!>(cell)
    =/  vax=vase  q.pail.q.u.ref
    =/  res=(each vase tang)  (render-hoon code.cell vax)
    :_  !>(cell)
    :~  [(snoc here.bowl %err) %make %tang ?:(-.res `!>(~) `!>(p.res)) ~]
        [(snoc here.bowl %out) %make %sig ?:(-.res `p.res `!>(~)) ~]
    ==
  --
--
