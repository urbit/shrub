/@  members
/@  dm-pub-poke
/@  dm-message
|%
++  state  %members
++  poke  (sy %dm-pub-poke %dm-message ~)
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
    =/  memb  !<(members state-vase)
    ?+    stud  !!  
        %dm-pub-poke
      =/  poke  !<(dm-pub-poke vax)
      ?-    -.poke
          %invite
        ?>  =(our ship.src):bowl
        ?>  !=(our.bowl who.poke)
        ?^  (rear here.bowl)
          !!
        :_  !>((~(put in memb) who.poke))
        :~  :-  ~[p/who.poke %home %dms]
            [%poke %dm-new !>([%remote (rear here.bowl)])]
        ==
      ::
          %remove
        ?>  =(our ship.src):bowl
        ?>  !=(our.bowl who.poke)
        [~ !>((~(del in memb) who.poke))]
      ==
    ::
        %dm-message
      =/  poke  !<(dm-message vax)
      ?>  =(%dm -.poke)
      ?>  (~(has in memb) ship.src.bowl)
      :_  state-vase
      :~  :-  (welp here.bowl ~[da/now.bowl])
          [%make %message `!>([ship.src.bowl now.bowl contents.poke]) ~]
      ==
    ==
  --
--
