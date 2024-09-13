/@  manx
/@  pith
/@  homepage
/@  widget
^-  kook:neo
|%
++  state
  ^-  curb:neo
  pro/%homepage
++  poke
  ^-  (set stud:neo)
  (sy %gift %homepage ~)
++  kids
  ^-  kids:neo
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  :-  [|/%tas &/%widget |/%t |]
      [pro/%widget (sy %sig ~)]
  ==
++  deps
  %-  ~(gas by *deps:neo)
  :~  :-  %profiles
      :+  req=&  [pro/%sig (sy %sig ~)]
      :+  ~  %z
      %-  ~(gas by *lads:neo)
      :~  :-  [|/%tas &/%profile-image |]
          [or/~[pro/%jpg pro/%png] (sy %sig ~)]
          :-  [|/%tas &/%header-image |]
          [or/~[pro/%jpg pro/%png] (sy %sig ~)]
          :-  [|/%tas &/%sigil-color |]
          [pro/%hexadecimal (sy %sig ~)]
          :-  [|/%tas &/%sigil-background-color |]
          [pro/%hexadecimal (sy %sig ~)]
          :-  [|/%tas &/%display-name |]
          [pro/%txt (sy %sig ~)]
          :-  [|/%tas &/%organization |/%t |]
          [pro/%pith (sy %sig ~)]
          :-  [|/%tas &/%phone-number |]
          [pro/%phone-number (sy %sig ~)]
          :-  [|/%tas &/%email |]
          [pro/%email (sy %sig ~)]
          :-  [|/%tas &/%url |]
          [pro/%url (sy %sig ~)]
          :-  [|/%tas &/%birthday |]
          [pro/%time (sy %sig ~)]
          :-  [|/%tas &/%username |/%t |]
          [pro/%txt (sy %sig ~)]
          :-  [|/%tas &/%about |/%t |]
          [pro/%txt (sy %sig ~)]
          :-  [|/%tas |/%tas &]
          [[%any ~] (sy %sig ~)]
      ==
  ==
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(homepage state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      ?~  old
        ~_  leaf/"No initial state for {<(pout here.bowl)>}"
        !!
      ?>  =(%homepage p.u.old)
      ?:  =([~ *] !<(homepage q.u.old))
        ~_  leaf/"No initial profile pith for {<(pout here.bowl)>}"
        !!
      [~ [%homepage q.u.old]]
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(our.bowl ship.src.bowl)
      ::  XX accept %pith poke to change pith.state only
      ?+      stud
            !!
          %homepage
        [~ [%homepage vaz]]
      ::
          %gift
        =/  giv    !<(gift:neo vaz)
        =/  gifts  ~(tap of:neo giv)
        :-  ~
        :-  %homepage
        !>  ^-  homepage
        :-  pith.state
        %+  skip
          %+  welp
            widget-order.state
          %+  murn
            gifts
          |=  [=pith:neo =loot:neo]
          ^-  (unit pith:neo)
          ?.  =(mode.loot %add)
            ~
          `pith
        |=  current=pith
        ^-  ?
        %+  lien
          %+  murn
            gifts
          |=  [=pith:neo =loot:neo]
          ^-  (unit pith:neo)
          ?.  =(mode.loot %del)
            ~
          `pith
        |=  deleted=pith
        ^-  ?
        =(deleted current)
      ==
  --
--
