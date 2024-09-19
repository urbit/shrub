/@  phone-number
^-  kook:neo
|%
++  state
  pro/%phone-number
++  poke
  (sy %phone-number ~)
++  kids
  *kids:neo
++  deps
  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =stud:neo state-vase=vase]
    +*  state  !<(phone-number state-vase)
    ++  init
      |=  old=(unit pail:neo)
      ^-  (quip card:neo pail:neo)
      ?~  old
        ~_  leaf/"No phone number provided for {<(pout here.bowl)>}"
        !!
      [~ [%phone-number !>((phone-number !<(cord q:(need old))))]]
    ++  poke
      |=  [=stud:neo vaz=vase]
      ^-  (quip card:neo pail:neo)
      ?>  =(stud %phone-number)
      [~ [%phone-number !>((phone-number !<(cord vaz)))]]
  --
--