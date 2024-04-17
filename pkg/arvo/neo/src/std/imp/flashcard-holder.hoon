/@  flashcard
/@  flashcard-spawn
^-  firm:neo
|%
++  state  %sig
++  poke  (sy %flashcard-spawn ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  ~[|/%t]
      [%flashcard %sig]
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
    ?>  =(%flashcard-spawn stud)
    =/  act  !<(flashcard-spawn vax)
    ?>  =(%new-card -.act)
    :_  vax
    :~  :-  (snoc here.bowl title.act) 
        [%make [%flashcard `!>([front.act back.act]) ~]]
    ==
  --
--