/@  txt
/@  diary
/@  diary-diff
::
^-  kook:neo
|%
++  state  pro/%diary
++  poke  (sy %diary-diff ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  :-  [|/%da |]
      [pro/%txt ~]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo state=pail:neo]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%diary-diff stud)
    =/  poke  !<(diary-diff vax))
    =/  sta  !<(diary q.state)
    ?>  =(our ship.src):bowl
    =^  cards=(list card:neo)  sta
      ?-  -.poke
        %put-entry
          :_  sta
          :~
            :-  (welp here.bowl ~[da/id.poke])
            ^-  note:neo
            [%make %txt `!>(txt.poke) ~]
          ==
        %del-entry  `sta
      ==
    [cards diary/!>(sta)]
  ++  init
    |=  old=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    `(need old)
  --
--
