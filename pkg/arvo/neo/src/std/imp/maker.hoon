/@  rectangle
/@  component
/@  maker-diff
|%
++  state  %sig
++  poke   (sy %maker-diff ~)
++  kids   
  %-  ~(gas by *kids:neo)
  :~  [[|/%tas |] [%screen %sig]]
  ==
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(%maker-diff stud)
    =/  poke  !<(maker-diff vax)
    :_  state-vase
    ?-    -.poke
        %screen  
      :~  :*  (welp here.bowl ~[name.poke])
              [%make %screen `!>(~) ~]
          ==
      ==
        %rectangle  
      :~  :*  (welp here.bowl ~[screen.poke ud/x.poke ud/y.poke])
              [%make %rectangle `!>(rectangle.poke) ~]
          ==
      ==
        %object  
      :~  :*  (welp here.bowl ~[screen.poke ud/x.poke ud/y.poke])
              [%make %object `!>(~) ~]
          ==
          :*  (welp here.bowl ~[screen.poke ud/x.poke ud/y.poke %component])
              [%make %object `!>(component.poke) ~]
          ==
          :*  (welp here.bowl ~[screen.poke ud/x.poke ud/y.poke %on])
              [%make %object `!>(on.poke) ~]
          ==
          :*  (welp here.bowl ~[screen.poke ud/x.poke ud/y.poke %off])
              [%make %object `!>(off.poke) ~]
          ==
      ==
    ==
  ++  init
    |=  vas=(unit vase)
    [~ !>(~)]
  --
--
