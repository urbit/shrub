/@  members
/@  dm-pub-poke
|%
++  state  %members
++  poke  (sy %dm-pub-poke ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%da |]
      [%message %sig]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  old=(unit vase)
    ^-  (quip card:neo vase)
    [~ !>((sy ~[our.bowl]))]
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%dm-pub-poke stud)
    =/  memb  !<(members state-vase)
    =/  poke  !<(dm-pub-poke vax)
    ?-    -.poke
        %invite
      ?>  =(our ship.src):bowl
      ?>  !=(our.bowl who.poke)
      [~ !>((~(put in memb) who.poke))]
    ::
        %remove
      ?>  =(our ship.src):bowl
      [~ !>((~(del in memb) who.poke))]
    ::
        %dm
      ?>  (~(has in memb) ship.src.bowl)
      :_  state-vase
      :~  :-  (welp here.bowl ~[da/now.bowl])
          [%make %message `!>([ship.src.bowl now.bowl contents.poke]) ~]
      ==
    ==
  --
--
