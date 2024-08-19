/@  order
/@  meta-diff
^-  kook:neo
|%
++  state  pro/%order
++  poke   (sy %meta-diff ~)
++  kids  *kids:neo
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
    ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :-  ~
    ?~  pal  
      order/!>(~)
    =+  !<(=meta-diff q:(need pal))
    ~&  meta-diff
    ?>  ?=(%order -.meta-diff)
    =/  =order  ;;  order  order.meta-diff
    order/!>(order)
    ::
    ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  ?=(%meta-diff stud)
    ~&  'got poke'
    ~&  >>  -.q.pail
    =/  state  !<(order q.pail)
    =/  diff  !<(meta-diff vax)
    ~&  diff
    ?>  ?=(%order -.diff)
    =/  =order  ;;  order  order.diff
    :_  order/!>(order)
    ~
  --
--