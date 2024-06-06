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
    ?-    -.poke
        %set-current
      :-  ~
      !>
      state(current slide.poke)
    ::
        %delete-slide
      :-  ~
      =/  ind  (need (find ~[id.poke] slides.state))
      =/  newc
        ?~  ind  0x0
        (snag (dec ind) slides.state)
      !>
      state(slides (oust [ind 1] slides.state), current newc)
    ::
        %new-slide
      =/  name  (head f:t:(yore now.bowl))
      :-
        :~
          [(snoc here.bowl ux/name) %make %sail `!>(['' 'slide prose' ~]) ~]
        ==
      !>
      ?~  under.poke
        state(slides (snoc slides.state name), current name)
      state(slides (into slides.state u.under.poke name), current name)
    ::
        %move-slide
      =/  ind  (need (find ~[id.poke] slides.state))
      :-  ~
      !>
      %=  state
        slides
          ?:  =(%up direction.poke)
            ?:  =(0 ind)  slides.state
            =/  nind=@ud  (dec ind)
            %-  zing
            ^-  (list (list @ux))
            :~
              (scag nind slides.state)
              (flop (swag [nind 2] slides.state))
              (slag +(ind) slides.state)
            ==
          %-  zing
          ^-  (list (list @ux))
          :~
            (scag ind slides.state)
            (flop (swag [ind 2] slides.state))
            (slag (add 2 ind) slides.state)
          ==
        ::
      ==
    ==
  ++  init
    |=  new=(unit vase)
    ?^  new  `u.new
    =/  name  (head f:t:(yore now.bowl))
    :-
      :~
        [(snoc here.bowl ux/name) %make %sail `!>(['' 'slide prose' ~]) ~]
      ==
    !>([name name^~ *(map @t @t)])
  --
--
