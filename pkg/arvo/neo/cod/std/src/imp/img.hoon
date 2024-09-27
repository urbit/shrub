/@  txt
^-  kook:neo
|%
++  state
  ^-  curb:neo
  [%pro %txt]
++  poke
  ^-  (set stud:neo)
  (sy %txt ~)
++  kids
  ^-  kids:neo
  *kids:neo
++  deps
  ^-  deps:neo
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(txt state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      [~ (need old)]
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(%txt stud)
      =/  act
        !<(txt vaz)
      [~ [%txt !>(act)]]
  --
--
