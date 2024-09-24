/@  reaction
/@  meta-social
^-  kook:neo
|%
++  state  pro/%reactions  ::(set reaction)
++  poke   (sy %meta-social ~)
++  kids
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  :-  &
    [pro/%reactions (sy %meta-social ~)]
  ==
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
    ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    ?~  pal  
      reactions/!>(~)
    =+  !<(=meta-social q:(need pal))
    ?>  ?=(%reaction -.meta-social)
    reactions/!>(+.meta-social)
    ::
    ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  ?=(%meta-social stud)
    =/  state  !<((set reaction) q.pail)
    =/  diff  !<(meta-social vax)
    ?>  ?=(%reaction -.diff)
    =/  new=(set reaction)  +.diff
    =/  new-state=(set reaction)
      ?~  new  state
      =/  has-in  !=(~ (~(dig in state) -.new))
      ?:  has-in  
        %-  ~(del in state)  -.new
      %-  ~(put in state)  -.new
    :_  reactions/!>(new-state)
    ~
  --
--