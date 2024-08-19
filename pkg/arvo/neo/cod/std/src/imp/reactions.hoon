/@  recation
/@  meta-diff
/-  su=shrub-utils
^-  kook:neo
|%
++  state  pro/%reactions  ::(set reaction)
++  poke   (sy %meta-diff ~)
++  kids
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  :~  :-  &
    [pro/%reactions (sy %meta-diff ~)]
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
    =+  !<(=meta-diff q:(need pal))
    ~&  meta-diff
    ?>  ?=(%reaction -.meta-diff)
    reactions/!>((sy +.meta-diff ~))
    ::
    ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  ?=(%meta-diff stud)
    ~&  kids/(kids-at-pith:su kids.bowl /)
    ~&  'got poke'
    =/  state  !<((set reaction) q.pail)
    =/  diff  !<(meta-diff vax)
    ~&  diff
    ?>  ?=(%reaction -.diff)
    :_  reactions/!>(~(rep in +.diff) |=(=reaction (~(put in state) reaction))
    ~
  --
--