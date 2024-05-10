/@  dm-sub-poke
/@  message
|%
++  state  %sig
++  poke  (sy %dm-sub-poke ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%da |]
      [%message %sig]
  ==
++  deps
%-  ~(gas by *deps:neo)
  :~  :-  %pub
      :+  req=&  [%members %dm-pub-poke]
      :+  ~  %y
      %-  ~(gas by *kids:neo)
      :~  :-  [|/%da |]
          [%message %sig]
      ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  old=(unit vase)
    ^-  (quip card:neo vase)
    [~ !>(~)]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ::  /~zod/home/dms/~bus/the-boyz
    ::   0    1    2   3    4
    =/  source  (snag 3 here.bowl)
    =/  name    (snag 4 here.bowl)
    ?+    stud  !!
        %dm-sub-poke
      =/  poke  !<(dm-sub-poke vax)
      ?>  =(%dm -.poke)
      :_  state-vase
      :~  :-  ~[source %home %dms source name]
          [%poke %dm-pub-poke !>([%dm contents.poke])]
      ==
    ::
        %rely
      :_  state-vase
      =+  !<([=term =stem:neo] vax)
      ?>  ?=(%y -.q.stem)
      ::  only get new kids
      =/  kids
        %+  skim 
          ~(val by kids.q.stem) 
        |=  [=ever:neo =mode:neo =pail:neo] 
        =(%add mode)
      ?:  =(~ kids)
        ~
      =/  =pail:neo  pail:(snag 0 kids)
      =/  message  !<(message q.pail) 
      :~  :-  (welp here.bowl ~[da/time.message])
          [%make [%message `!>(message) ~]]
      ==
    ==
  --
--