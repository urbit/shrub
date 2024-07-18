/@  notifications-config
^-  kook:neo
|%
++  state
  [%pro %notifications]
++  poke
  (sy %notifications-config ~)
++  kids
  *kids:neo
++  deps
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(notifications-config state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      ?^  old
        [~ (need old)]
      [~ [%notifications-config !>(*state)]]
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(%notifications-config stud)
      =/  new-config  !<(notifications-config vaz)
      [~ [%notifications-config !>(new-config)]]
  --
--