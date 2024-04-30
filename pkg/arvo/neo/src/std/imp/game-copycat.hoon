/@  udlr
/@  position
|%
++  state  %position
++  poke   (sy %udlr ~)
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  vas=(unit vase)
    [~ (need vas)]
  ++  poke
    |=  [=stud:neo vax=vase]
    ?>  ?=(%udlr stud)
    =/  pos  !<(position state-vase)
    =/  move  !<(udlr vax)
    :-  ~
    !>
    ?-    move
        %up
      [x.pos (sub y.pos 1)]
        %down
      [x.pos (add y.pos 1)]
        %left
      [(sub x.pos 1) y.pos]
        %right
      [(add x.pos 1) y.pos]
    ==
  --
--
