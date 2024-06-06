/@  slideshow
/@  slideshow-diff
|%
++  state  %slideshow
++  poke   (sy %slideshow %slideshow-diff ~)
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?:  =(stud %slideshow)
      `vax
    ?>  =(stud %slideshow-diff)
    =/  poke  !<(slideshow-diff vax)
    =/  state  !<(slideshow state-vase)
    :-  ~
    !>
    ?-  -.poke
      %mode  state(mode mode.poke)
      %slide  state(slide slide.poke)
    ==
  ++  init
    |=  vas=(unit vase)
    :-  ~
    ?~  vas  !>(*slideshow)
    u.vas
  --
--
