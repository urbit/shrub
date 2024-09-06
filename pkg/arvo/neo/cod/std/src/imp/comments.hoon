/@  comment
/@  meta-diff
/-  su=shrub-utils
^-  kook:neo
|%
++  state  pro/%comments  ::(set comment)
++  poke   (sy %meta-diff ~)
++  kids  ::*kids:neo
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  :-  &
    [pro/%comments (sy %meta-diff ~)]
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
    =+  !<(=meta-diff q:(need pal))
    ~&  meta-diff
    ?>  ?=(%comment -.meta-diff)
    comments/!>(+.meta-diff)
    ::
    ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  ?=(%meta-diff stud)
    ~&  kids/(kids-at-pith:su kids.bowl /)
    ~&  'got poke'
    =/  state  !<((set comment) q.pail)
    =/  diff  !<(meta-diff vax)
    ~&  diff
    ?>  ?=(%comment -.diff)
    =/  new-state 
      %-  ~(uni in state)  +.diff
    ~&  new-state
    :_  comments/!>(new-state)
    ~
  --
--