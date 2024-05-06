/@  rectangle
/@  draw
|%
++  state  %screen
++  poke   (sy %draw ~)
++  kids   
  %-  ~(gas by *kids:neo)
  :~  [[|/%ud |/%ud |] [%rectangle %sig]]
  ==
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%draw stud)
    =/  poke  !<(draw vax)
    :_  state-vase
    ?-    -.poke
        %add  
      :~  :*  (welp here.bowl ~[ud/x.poke ud/y.poke])
              [%make %rectangle `!>(rectangle.poke) ~]
          ==
      ==
    ==
  ++  init
    |=  vas=(unit vase)
    [~ !>(~)]
  --
--
