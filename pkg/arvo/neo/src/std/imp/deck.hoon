/@  deck
/@  deck-diff
/@  sail
::
^-  firm:neo
|%
++  state  %deck
++  poke  (sy %deck-diff ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%ux |]
      [%sail %sig]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%deck-diff stud)
    =/  state  !<(deck state-vase)
    =/  poke  !<(deck-diff vax)
    ?+    -.poke  !!
        %set-current
      :-  ~
      !>
      state(current slide.poke)
        %new-slide
      =/  name  (head f:t:(yore now.bowl))
      :-
        :~
          [(snoc here.bowl ux/name) %make %sail ~ ~]
        ==
      !>
      state(slides (snoc slides.state name))
    ==
  ++  init
    |=  new=(unit vase)
    ?^  new  `u.new
    =/  name  (head f:t:(yore now.bowl))
    :-
      :~
        [(snoc here.bowl ux/name) %make %sail ~ ~]
      ==
    !>([name name^~ *(map @t @t)])
  --
--
