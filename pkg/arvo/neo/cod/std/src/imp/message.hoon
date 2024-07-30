/@  message
^-  kook:neo
|%
++  state  [%pro %message]
++  poke   (sy %sig ~)
++  kids   *kids:neo
++  deps   *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(message state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      ?~  old
        ~|  "No message contents for {<here.bowl>}"
        !!
      =/  new-message
        !<(message q:(need old))
      :_  [%message !>(new-message)]
      ?:  =(our.bowl from.new-message)
        ~
      :~  :-  #/[p/our.bowl]/home/notifications
          [%poke [%notification !>([%.y now.bowl here.bowl contents.new-message])]]
      ==
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      [~ [%message !>(state)]]
  --
--