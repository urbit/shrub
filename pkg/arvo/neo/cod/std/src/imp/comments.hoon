/@  comment
/@  meta-social
/-  su=shrub-utils
^-  kook:neo
|%
++  state  pro/%comments  ::(set comment)
++  poke   (sy %meta-social ~)
++  kids  ::*kids:neo
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  :-  &
    [pro/%comments (sy %meta-social ~)]
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
      comments/!>(~)
    =+  !<(=meta-social q:(need pal))
    ~&  meta-social
    ?>  ?=(%comment -.meta-social)
    comments/!>(+.meta-social)
    ::
    ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  ?=(%meta-social stud)
    ~&  kids/(kids-at-pith:su kids.bowl /)
    ~&  'got poke'
    =/  state  !<((set comment) q.pail)
    =/  diff  !<(meta-social vax)
    ~&  diff
    ?>  ?=(%comment -.diff)
    =/  new-state 
      %-  ~(uni in state)  +.diff
    ~&  new-state
    :_  comments/!>(new-state)
    ~
  --
--