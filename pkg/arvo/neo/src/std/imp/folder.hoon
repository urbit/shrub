/@  folder
/@  folder-diff
^-  firm:neo
|%
++  state  %folder
++  poke  (sy %folder %folder-diff ~)
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =ever:neo sta=vase *]
  ++  init
    |=  new=(unit vase)
    ^-  (quip card:neo vase)
    :-  ~
    ?~  new
      !>(*folder)
    u.new
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo vase)
    ?+    stud  !!
        %folder-diff
      =/  poke  !<(folder-diff vax)
      =/  this  !<(folder sta)
      ?-    -.poke
          %make
        :_  !>([name.poke this])
        :~  [(snoc here.bowl name.poke) %make stud.poke ~ ~]
        ==
      ::
          %tomb
        :-  ~
        =/  i  (need (find ~[name.poke] this))
        !>((oust [i 1] this))
      ==
    ==
  --
--