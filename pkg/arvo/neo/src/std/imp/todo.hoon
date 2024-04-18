/@  todo
/@  todo-diff
^-  firm:neo
|%
++  state  %todo
++  poke  (sy %todo-diff ~)
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  vas=(unit vase)
    ::  text=@t
    =/  text  !<(@t (need vas))
    [~ !>([text %todo])]
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%todo-diff stud)
    =/  text  text:!<(todo state-vase)
    =/  act  !<(todo-diff vax)
    :-  ~
    ?-    -.act
        %done  !>([text %done])
        %todo  !>([text %todo])
        %later  !>([text %later])
    ==
  --
--
