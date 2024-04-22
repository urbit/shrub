/@  dm-link-diff
/@  dm-link
/@  message
=>
|%
++  card  card:neo
--
^-  firm:neo
|%
++  state  %dm-link
++  poke  (sy %dm-link-diff %rely ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  ~[|/%da]
      [%message %sig]
  ==
++  deps
  %-  ~(gas by *deps:neo)
  :~  
  ::
  :-  %link
  ::
  :+  req=|  [%sig %dm-diff]
  :+  ~  %y
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%da]~
      [%message %sig]
    ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?:  =(%rely stud)
      =+  !<([=term =stem:neo] vax)
      ?>  ?=(%y -.q.stem)
      =/  vals  ~(val by kids.q.stem)
      ~&  [%vals vals]
      ?:  =(0 (lent vals))
        `state-vase
      =/  =pail:neo  pail:(snag 0 vals)
      =+  !<(=message q.pail)
      ::  TODO handle
      ?<  =(our.bowl from.message)
      :_  state-vase
      :~
        :*
          (welp here.bowl ~[da/now.bowl])
          %make                 
          [%message `q.pail ~]
        ==
      ==
    ?>  =(%dm-link-diff stud)
    =/  poke  !<(dm-link-diff vax)
    ?>  =(our ship.src):bowl
    ?>  =(%msg -.poke)
    :_  !>([& &])
    :~  
      :*
        (welp were.bowl ~[da/now.bowl])
        %make 
        [%message `!>(message.poke) ~]
      ==
    ==
  ++  init
    |=  old=(unit vase)
    `!>([& &])
  --
--
