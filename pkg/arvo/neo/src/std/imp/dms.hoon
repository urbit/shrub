/@  dm-new
^-  firm:neo
|%
++  state  %sig
++  poke  (sy %dm-new ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%p |/%tas |]
      [%sig %sig]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  old=(unit vase)
    ^-  (quip card:neo vase)
    [~ (need old)]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    :_  state-vase
    ?>  =(%dm-new stud)
    =/  poke  !<(dm-new vax)
    =/  end  ~[p/ship.src.bowl name.poke]                 ::  /~bus/the-boyz
    =/  ours=pith  (welp ~[p/our.bowl %home %dms] end)         ::  /~zod/home/dms/~bus/the-boyz
    =/  theirs=pith  (welp ~[p/ship.src.bowl %home %dms] end)  ::  /~bus/home/dms/~bus/the-boyz
    ?-    -.poke
        %create
      ?>  =(our ship.src):bowl
      [ours %make %dm-pub `!>(~) ~]~
    ::
        %remote
      =/  deps  (malt [%pub theirs]~)
      [ours %make %dm-sub `!>(~) deps]~
    ==
  --
--
