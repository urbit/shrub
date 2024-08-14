/@  jpg
/@  png
/@  manx
/@  ship
/@  time
/@  hexadecimal
:: /@  organization
^-  kook:neo
|%
++  state
  [%pro %sig]
++  poke
  (sy %sig ~)
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
      :-  [|/%tas &/%sigil-background |]
      [pro/%hexadecimal (sy %sig ~)]
      :-  [|/%tas &/%display-name |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%first-name |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%last-name |]
      [pro/%txt (sy %sig ~)]
      ::  XX need an /imp/organization to mirror e.g. ~bitdeg's UF org
      :: :-  [|/%tas &/%organization |]
      :: [pro/%organization (sy %organization ~)]
      :-  [|/%tas &/%phone-number |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%email |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%url |]
      [pro/%txt (sy %sig ~)]
      ::  XX no timeless and eternal type for this
      ::     could use %or curb and define a few
      :-  [|/%tas &/%address |]
      [pro/%sig (sy %sig ~)]
      :-  [|/%tas &/%date-of-birth |]
      [pro/%time (sy %sig ~)]
      :-  [|/%tas &/%username |/%t |/%t |]
      [pro/%sig (sy %sig ~)]
      :-  [|/%tas &/%widget |/%tas |]
      [pro/%manx (sy %sig ~)]
      :-  [|/%tas |/%tas &]
      [pro/%sig (sy %sig ~)]
  ==
++  deps
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(number state-vase)
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