/@  counter
/@  counter-diff
^-  firm:neo
|%
++  state  %counter
++  poke  (sy %counter-diff ~)
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  vas=(unit vase)
    ::  set initial count to 0
    [~ !>(0)]
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%counter-diff stud)
    =/  act  !<(counter-diff vax)
    =/  count  !<(counter state-vase)
    ?-    -.act
        %inc
      [~ !>((add count 1))]
        %dec
      [~ !>((sub count 1))]
    ==
  --
--
