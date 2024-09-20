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
    ~&  meta-social
    ?>  ?=(%reaction -.meta-social)
    reactions/!>((sy +.meta-social ~))
    ::
    ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  ?=(%meta-social stud)
    ~&  'got poke'
    =/  state  !<((set reaction) q.pail)
    =/  diff  !<(meta-social vax)
    ~&  diff
    ?>  ?=(%reaction -.diff)
    =/  new-state  %-  ~(uni in state)  +.diff
    :_  reactions/!>(new-state)
    ~
  --
--