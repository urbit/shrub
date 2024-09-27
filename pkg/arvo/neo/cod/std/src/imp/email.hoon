/@  email
^-  kook:neo
|%
++  state
  pro/%email
++  poke
  (sy %email ~)
++  kids
  *kids:neo
++  deps
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(email state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      ?~  old
        ~_  leaf/"No email provided for {<(pout here.bowl)>}"
        !!
      [~ [%email !>((email !<(cord q:(need old))))]]
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(stud %email)
      [~ [%email !>((email !<(cord vaz)))]]
  --
--