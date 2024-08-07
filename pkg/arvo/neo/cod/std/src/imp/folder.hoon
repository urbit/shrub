/@  folder
/@  folder-diff
/@  todos
/@  metadata
=>
  |%
  ++  default-pails
    %-  malt
    ^-  (list [stud:neo pail:neo])
    :~
      [%iframe iframe/!>('')]
      [%hoon hoon/!>('~')]
      [%todos todos/!>(*todos)] 
      [%txt txt/!>('')]
    ==
  --
^-  kook:neo
|%
++  state  pro/%folder
++  poke  (sy %folder-diff ~)
++  kids
  :-  ~
  :-  %y
  ^-  (map pish:neo lash:neo)
  %-  malt
  :~
    :-  [|/%ta |]
    [pro/%any ~]
  ==
++  deps  
  %-  ~(gas by *band:neo)
  :~  :-  %src
      ^-  fief:neo
      :-  req=|
      ^-  quay:neo
      :-  [pro/%metadata (sy %metadata ~)]
      ~
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
  ++  init
    |=  new=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    ?^  new  u.new
    folder/!>(*folder)
  ::
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?+    stud  !!
        %folder-diff
      =/  poke  !<(folder-diff vax)
      =/  this  !<(folder q.pail)
      ?-    -.poke
          %make
        ::
        =/  src  (~(get by deps.bowl) %src)
        ~&  >  ~(key by deps.bowl)
        ~&  ?~  src  'no dep'
        =/  idea  (~(get of:neo q:(need src)) /)
        ?~  idea  'no idea'
          =/  metadata  !<(metadata q.q.saga:(need idea))
          ~&  here/here.bowl
          ~&
          (~(get by metadata) here.bowl)
        ::
        :_  folder/!>([name.poke this])  ::  add new item to head of of list
        :~  [(snoc here.bowl name.poke) %make stud.poke (~(get by default-pails) stud.poke) ~]
        ==
      ::
          %tomb
        :-  ~
        =/  i  (need (find ~[name.poke] this))
        folder/!>((oust [i 1] this))
      ==
    ==
  --
--
