=>
|%
++  card  card:neo
--
^-  kook:neo
|%
++  state  pro/%atom
++  poke  (sy %atom ~)
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo sted=stud:neo sta=vase]
  ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  =(%atom stud)
    =+  !<(atom=@ud vax)
    :-  ~
    =-  atom/!>(-)
    (add atom !<(@ud sta))
  ::
  ++  init
    |=  old=(unit pail:neo)  
    ^-  (quip card:neo pail:neo)
    :-  ~
    =-  atom/!>(-)
    ?~  old
      0
    !<(@ud q.u.old)
  --
--

