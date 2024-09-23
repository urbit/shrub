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
      :-  [|/%tas &/%sigil-background-color |]
      [pro/%hexadecimal (sy %sig ~)]
      :-  [|/%tas &/%display-name |]
      [pro/%txt (sy %sig ~)]
      :-  [|/%tas &/%organization |]
      [pro/%pith (sy %sig ~)]
      :-  [|/%tas &/%phone-number |]
      [pro/%phone-number (sy %phone-number ~)]
      :-  [|/%tas &/%email |]
      [pro/%email (sy %email ~)]
      :-  [|/%tas &/%url |]
      [pro/%url (sy %url ~)]
      :-  [|/%tas &/%birthday |]
      [pro/%time (sy %sig ~)]
      ::  XX  %handle might be a better name for what this is trying to express
      ::      "here is the globally unique string by which you can find me on
      ::       this service"
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
      [~ [%sig !>(~)]]
  --
--
