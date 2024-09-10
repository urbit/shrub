/@  jpg
/@  png
/@  txt
/@  url
/@  ship
/@  time
/@  email
/@  hexadecimal
/@  phone-number
^-  kook:neo
|%
++  state
  [%pro %sig]
++  poke
  (sy %email %phone-number %url ~)
++  kids
  :+  ~
    %z
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
      :-  [|/%tas &/%organization |]
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
      ::  XX should limit to 256 characters
      ::     seems like an acceptable general-purpose
      ::     length for a global bio; if you really want
      ::     to write an autobiography do it in a widget
      :-  [|/%tas &/%about |/%t |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas |/%tas &]
      [[%any ~] (sy %sig ~)]
  ==
++  deps
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      [~ [%sig !>(~)]]
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(our.bowl ship.src.bowl)
      ?+      stud
            !!
        ::  XX refactor
        ::       should listen for %gifts and typecheck based on the state
        ::       of every kid we receive an %add gift about. this means we can
        ::       safely make these kids without having to poke this shrub.
            %email
        =/  txt  !<(cord vaz)
        =/  her  (head (flop here.bowl))
        :_  [%sig !>(~)]
        :~  :-  (welp here.bowl #/[her]/email)
            [%make %email `[%email !>((email txt))] ~]
        ==
      ::
          %phone-number
        =/  txt  !<(cord vaz)
        =/  her  (head (flop here.bowl))
        :_  [%sig !>(~)]
        :~  :-  (welp here.bowl #/[her]/phone-number)
            [%make %phone-number `[%phone-number !>((phone-number txt))] ~]
        ==
      ::
          %url
        =/  txt  !<(cord vaz)
        =/  her  (head (flop here.bowl))
        :_  [%sig !>(~)]
        :~  :-  (welp here.bowl #/[her]/url)
            [%make %url `[%url !>((url txt))] ~]
        ==
      ==
  --
--
