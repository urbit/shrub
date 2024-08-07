/@  metadata 
^-  kook:neo
|%
++  state  pro/%metadata
++  poke   (sy %metadata ~)
++  kids  
  :+  ~  %y
  %-  ~(gas by *lads:neo)
  ~
++  deps  *deps:neo
++  form
  ^-  form:neo
  |_  [=bowl:neo =aeon:neo =pail:neo]
    ++  init
    |=  pal=(unit pail:neo)
    ^-  (quip card:neo pail:neo)
    :_  metadata/!>(~)
    ~
    ++  poke
    |=  [=stud:neo vax=vase]
    ^-  (quip card:neo pail:neo)
    ?>  ?=(%metadata stud)
    =/  state  !<(metadata q.pail)
    =/  new-data  !<(metadata vax)
    =/  piths=(list pith:neo)  ~(tap in ~(key by new-data))
    =/  data=(list [pith:neo (set (pair mane tape))])
        %+  turn  piths
        |=  =pith:neo
        ^-  [pith:neo (set (pair mane tape))]
        =/  old-data  (~(get by state) pith)
        =/  update  (~(got by new-data) pith)
        ?~  old-data  [pith update]
        :-  pith
        (~(gas in (need old-data)) ~(tap in update))
    :_  metadata/!>((~(uni by state) (malt data)))
    ~
  --
--