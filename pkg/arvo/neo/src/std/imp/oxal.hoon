/@  oxal
/@  oxal-diff
/-  _/oxal-utils
::
^-  firm:neo
|%
++  state  %oxal
++  poke  (sy %oxal-diff ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%t |]
      [%oxal %oxal-diff]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%oxal-diff stud)
    =/  poke  !<(oxal-diff vax)
    =/  this  !<(oxal state-vase)
    ?>  =(our ship.src):bowl
    ?+  -.poke  !!
      %edit
        :-  ~
        !>
        %=  this
          what
            `[%document pail.poke]
        ==
      %restud
        :-  ~
        !>
        %=  this
          what
            ?:  =(stud.poke %none)  ~
            `[%document (default-pail:oxal-utils stud.poke)]
        ==
      %rename
        :-  ~
        !>
        %=  this
          name  name.poke
        ==
      %retag
        :-  ~
        !>
        %=  this
          tags  (turn tags.poke |=(=term [term |]))
        ==
      %prepend
        ::  autoname generator
        =/  smeg
          ^-  @ta
          %+  rsh  3
          %+  scot  %p
          (~(sit fo (pow 2 16)) (div `@ux`now.bowl 0x1000.0000.0000))
        :-
          :~
            :*  (snoc here.bowl smeg)
                %make
                %oxal
                ~
                ~
            ==
          ==
        !>
        %=  this
          kods  [~[smeg] kods.this]
        ==
      ::
    ==
  ++  init
    |=  old=(unit vase)
    ^-  (quip card:neo vase)
    :-  ~
    ?~  old
      !>(*oxal)
    u.old
  --
--
