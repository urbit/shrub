/@  manx
/@  pith
/@  ui-event
^-  kook:neo
|%
++  state
  ^-  curb:neo
  [%pro %pith]
++  poke
  ^-  (set stud:neo)
  (sy %sig ~)
++  kids
  ^-  kids:neo
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  :-  [&/%widget |/@t |]
      [pro/%manx (sy %rely %ui-event ~)]
  ==
++  deps
  %-  ~(gas by *deps:neo)
  :~  :-  %profiles
      :+  req=|  [pro/%sig (sy %sig ~)]
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
          ::  XX revisit this
          ::  :-  [|/%tas &/%organization |]
          ::  [pro/%txt (sy %sig ~)]
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
          :-  [|/%tas |/%tas &]
          [[%any ~] (sy %sig ~)]
      ==
  ==
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
      [~ [%sig !>(~)]]
  --
--
