/@  flashcard
^-  firm:neo
|%
++  state  %flashcard
++  poke  ~
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  vas=(unit vase)
    ::  [@t @t]
    =/  v  !<(flashcard (need vas))
    [~ !>(v)]
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    [~ vax]
  --
--
