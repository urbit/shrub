/@  flag
/@  notification
^-  kook:neo
|%
++  state
  ^-  curb:neo
  [%pro %notification]
++  poke
  ^-  (set stud:neo)
  (sy %flag ~)
++  kids
  *kids:neo
++  deps
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(notification state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      ?^  old
        [~ u.old]
      ~|  "notification: no notification provided"
      !!
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(stud %flag)
      ?>  =(our.bowl ship.src.bowl)
      [~ [%notification !>([!<(flag vaz) time.state pith.state cord.state])]]
  --
--
