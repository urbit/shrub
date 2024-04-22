/@  dm-diff
|%
++  state  %sig
++  poke  (sy %dm-diff ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  ~[|/%p]
      [%dm-link %dm-link-diff]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%dm-diff stud)
    =/  diff  !<(dm-diff vax)
    ?-  -.diff
        %create
      :_  state-vase
      ^-  (list card:neo)
      :~
        ::  XX  hardcoded dm location to ~zod/home/dm
        [(welp [p/ship.diff]~ /home/dm) %poke %dm-diff !>([%notify our.bowl])]
        [(welp here.bowl [p/ship.diff]~) %make %dm-link `!>([& &]) ~]
      ==
    ::
        %notify
      :_  state-vase
      ^-  (list card:neo)
      :~
        [(welp [p/ship.diff]~ /home/dm) %poke %dm-diff !>([%approve our.bowl])]
        [(welp here.bowl [p/ship.diff]~) %make %dm-link `!>([& &]) ~]  ::  XX todo fork on approve
      ==
    ::
        %approve
      ::  XX  if we've already declined, ignore this poke
      :_  state-vase
      ^-  (list card:neo)
      :~
        :*  (welp here.bowl [p/ship.diff]~)
             %make
             %dm-link
             `!>([& &])
             %-  malt
             :~
               :-  %link
               [p/ship.diff %home %dm p/our.bowl ~]
             ==
        ==
      ==
    ::
        %decline
      ~&  %not-implemented
      `!>(~)
    ==
    ::
  ++  init
    |=  old=(unit vase)  `!>(~)
  --
--
