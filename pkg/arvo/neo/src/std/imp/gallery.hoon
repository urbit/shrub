/@  gallery
/@  gallery-diff
/@  photo
=> 
|%
++  add-photo 
  |=  [=bowl:neo pic=photo]
  ^-  card:neo
  :-  (welp were.bowl ~[da/now.bowl])
  ^-  note:neo
  [%make %photo `!>(pic) ~]
-- 
^-  firm:neo
|%
++  state  %gallery
++  poke   (sy %gallery-diff ~)
++  kids
  %-  ~(gas by *kids:neo)
  :~  [~[|/%da] %photo %sig]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo state-vase=vase *]
  ++  init
    |=  vas=(unit vase)
    ::  Must name your gallery on %make
    [~ (need vas)]
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?>  =(our ship.src):bowl
    ?>  =(%gallery-diff stud)
    =/  poke  !<(gallery-diff vax)
    ?-    -.poke
        %name
      =/  sta   !<(gallery state-vase)
      [~ !>(sta(name name.poke))]
    ::
        %add-photo
      :_  state-vase
      ~[(add-photo bowl photo.poke)]
    ::
        %del-photo
      ::  This will crash, no %tomb yet
      :::_  state-vase
      ::~[[(snoc here.bowl da/id.poke) %tomb ~]]
      `state-vase
    ==
  --
--