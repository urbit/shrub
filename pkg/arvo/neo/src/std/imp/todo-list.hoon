/@  todo
/@  todo-list-diff
^-  firm:neo
|%
++  state  %sig
++  poke  (sy %todo-list-diff ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  ~[|/%t]
      [%todo %todo-diff]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  vas=(unit vase)
    [~ !>(~)]
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%todo-list-diff stud)
    =/  act  !<(todo-list-diff vax)
    ?-    -.act
        %new
      :_  vax
      :~  :-  (snoc here.bowl title.act) 
          [%make [%todo `!>(text.act) ~]]
      ==
    ::
    ==
  --
--