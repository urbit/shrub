::  An object should have two rectangles and one component.
::  Its con file should switch which rectangle it serves
::  based on status.component.
|%
++  state  %screen
++  poke   ~
++  kids   
  %-  ~(gas by *kids:neo)
  :~  [[&/%on |] [%rectangle %sig]]
      [[&/%off |] [%rectangle %sig]]
      [[&/%component |] [%component %sig]]
  ==
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    !!
  ++  init
    |=  vas=(unit vase)
    [~ !>(~)]
  --
--
