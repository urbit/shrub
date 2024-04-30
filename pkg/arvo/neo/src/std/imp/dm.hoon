/@  dm-diff
/@  message
=>
|%
++  card  card:neo
--
^-  firm:neo
|%
++  state  %ship
++  poke  (sy %dm-diff %rely ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%da |]
      [%message %sig]
  ==
++  deps
  %-  ~(gas by *deps:neo)
  :~  
  ::
  :-  %link
  ::
  :+  req=|  [%ship %dm-diff]
  :+  ~  %y
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%da |]
      [%message %sig]
    ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    =+  !<(her=ship state-vase)
    :_  state-vase
    ?:  =(%rely stud)
      =+  !<([=term =stem:neo] vax)
      ?>  ?=(%y -.q.stem)
      =/  kids
        (skim ~(val by kids.q.stem) |=([=ever:neo =mode:neo =pail:neo] =(%add mode)))
      ?:  =(~ kids)
        ~
      =/  =pail:neo  pail:(snag 0 kids)
      =+  !<(=message q.pail)
      ::  TODO handle
      ?:  =(our.bowl from.message)
        ~
      ::?>  =(her from.message)
      :_  ~  
      :*                               
        (welp here.bowl ~[da/now.bowl])
        %make                 
        [%message `q.pail ~]
      ==
    ?>  =(%dm-diff stud)
    =/  poke  !<(dm-diff vax)
    ::?>  =(our ship.src):bowl
    ?>  =(%msg -.poke)
    :~  
      :*
        (welp were.bowl ~[da/now.bowl])
        %make 
        [%message `!>(message.poke) ~]
      ==
    ==
  ++  init
    |=  old=(unit vase)  `(need old)
  --
--
