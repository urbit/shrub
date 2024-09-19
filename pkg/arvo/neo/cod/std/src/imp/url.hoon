/@  url
^-  kook:neo
|%
++  state
  pro/%url
++  poke
  (sy %url ~)
++  kids
  *kids:neo
++  deps
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(url state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      ?~  old
        ~_  leaf/"No url provided for {<(pout here.bowl)>}"
        !!
      [~ [%url !>((url !<(cord q:(need old))))]]
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(stud %url)
      [~ [%url !>((url !<(cord vaz)))]]
  --
--