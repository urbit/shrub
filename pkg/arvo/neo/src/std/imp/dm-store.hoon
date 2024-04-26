/@  dm-store-diff
|%
++  state  %sig
++  poke  (sy %dm-store-diff ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%p |]
      [%dm %dm-diff]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%dm-store-diff stud)
    =/  diff  !<(dm-store-diff vax)
    ?-  -.diff
        %create
      :_  state-vase
      ^-  (list card:neo)
      :~
        ::  XX  hardcoded dm location to ~zod/home/dm
        [(welp [p/ship.diff]~ /home/dm) %poke %dm-store-diff !>([%notify our.bowl])]
        [(welp here.bowl [p/ship.diff]~) %make %dm `!>(ship.diff) ~]
      ==
    ::
        %notify
      :_  state-vase
      ^-  (list card:neo)
      :~
        [(welp [p/ship.diff]~ /home/dm) %poke %dm-store-diff !>([%approve our.bowl])]
        :*  (welp here.bowl [p/ship.diff]~)
             %make
             %dm
             `!>(ship.diff)
             %-  malt
             :~
               :-  %link
               [p/ship.diff %home %dm p/our.bowl ~]
             ==
        ==
      ==
    ::
        %approve
      ::  XX  if we've already declined, ignore this poke
      :_  state-vase
      ^-  (list card:neo)
      :~
        :*  (welp here.bowl [p/ship.diff]~)
             %make
             %dm
             `!>(ship.diff)
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
    |=  old=(unit vase)
    [~ !>(~)]
  --
--
