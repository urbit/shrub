/@  accel-cell
::
^-  firm:neo
=>
|%
::  Overwrite /ref with new vase in response to %rely and in on-init
++  update-ref
  |=  =bowl:neo
  ^-  (list card:neo)
  =/  ref=(unit (pair pith cane:neo))
    (~(get by deps.bowl) %ref)
  ?~  ref  ~
  :~  :-  (snoc here.bowl %ref)
      [%make %sig `q.pail.q.u.ref ~]
  ==
--
|%
++  state  %accel-cell
++  poke  (sy %rely ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [&/%out |]
      [%sig %sig]
      ::
      :-  [&/%err |]
      [%tang %sig]
      ::
      :-  [&/%ref |]
      [%sig %sig]
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
    ?>  =(stud %rely)
    :_  state-vase
    (update-ref bowl)
  ::
  ++  init
    |=  old=(unit vase)
    =/  cell  !<(accel-cell (need old))
    :_  !>(cell)
    (update-ref bowl)
  --
--
