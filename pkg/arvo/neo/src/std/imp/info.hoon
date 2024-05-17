/@  info
|%
++  state  %info
++  poke   (sy %info ~)
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%info stud)
    [~ vax]
  ++  init
    |=  vas=(unit vase)
    ^-  (quip card:neo vase)
    :-  ~
    ?~  vas  !>(*info)
    u.vas
  --
--
