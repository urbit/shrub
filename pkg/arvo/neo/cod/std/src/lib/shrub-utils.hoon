|%  
::
::  get list of kids piths from lore
::
++  kids-at-pith
  |=  [lore=(axal:neo *) =pith:neo]
  ^-  (list pith:neo) 
  %~  tap  in 
  %~  key  by
  %-  %~  kid  of:neo
      lore
  pith
::
::  list of kids piths from lore as care %z
::
++  kidz-at-pith
  |=  [=pith:neo =lore:neo]
  =|  i=@
  ^-  (list pith:neo)
  =+  piths=(full-pith pith lore)
  |-
  ?:  =(i (lent piths))  piths
    =/  p=pith:neo  (snag i piths)
    ?~  (~(kid of:neo lore) p)  
      $(i +(i))
    =/  grand-kids  (full-pith p lore)
    $(i +(i), piths (welp piths grand-kids))
::
::  list of kids piths from lore with full pith
::
++  full-pith
  |=  [parent=pith:neo =lore:neo]
  ^-  (list pith:neo)
  ?~  (~(kid of:neo lore) parent)  ~
  %+  turn  ~(tap in ~(key by (~(kid of:neo lore) parent)))  
    |=  p=pith:neo 
    %+  welp  parent  p
::
::  (unit pail) from lore 
::
++  get-pail-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  (unit pail:neo)
  =/  idea=(unit idea:neo)  (~(get of:neo lore) pith)
  ?~  idea  ~
  `pail:(need idea)
::
++  got-pail-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  pail:neo
  =/  =idea:neo  (~(got of:neo lore) pith)
  pail.idea
::
++  get-pail-saga-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  (unit pail:neo)
  =/  idea=(unit idea:neo)  (~(get of:neo lore) pith)
  ?~  idea  ~
  `q.saga:(need idea)
::
++  got-pail-saga-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  pail:neo
  =/  idea=idea:neo  (~(got of:neo lore) pith)
  q.saga:idea
::
++  get-vase-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  (unit vase)
  =/  idea=(unit idea:neo)  (~(get of:neo lore) pith)
  ?~  idea  ~
  `q.pail:(need idea)
::
++  got-vase-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  vase
  =/  =idea:neo  (~(got of:neo lore) pith)
  q.pail:idea
::
++  get-vase-saga-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  (unit vase)
  =/  idea=(unit idea:neo)  (~(get of:neo lore) pith)
  ?~  idea  ~
  `q.q.saga:(need idea)
::
++  got-vase-saga-by-pith
  |=  [=lore:neo =pith:neo]
  ^-  vase
  =/  idea=idea:neo  (~(got of:neo lore) pith)
  q.q.saga:idea
::
:: ++  piths-to-map
::   |=  piths=(list pith:neo) ::axal=(axal:neo *)
::   ^-  (unit (map @ @))
::   =/  kids=(list pith:neo)  
::     %+  skim  piths ::(kids-at-pith axal /)
::       |=(=pith:neo =((lent pith) 2))
::   ?~  kids  ~
::   ~&  [(head (head kids)) (head (tail (head kids)))]
::   =+  types=[a=%tas b=%tas]
::   ?:  ?=(^ (head (head kids)))  
::     =.  a.types  -:(head(head kids))
::   ?:  ?=(^ (head (tail (head kids))))
::     =.  b.types  -:(head (tail (head kids)))
::   types
::   =/  l
::     %+  murn  kids
::       |=  p=pith:neo 
::       =+  pair=[a=*@ b=*@]
::       ~&  p
::       ~&  >>  head/-:(head p)
::       ?.  ?=(^ (head p))  
::         ?.  ?=(%tas a.types)  ~
::         =.  a.pair  +:(head p)
::       ?.  ?=(a.types -:(head p))  ~
::       =.  a.pair  +:(head p)
::       ?.  ?=(^ (rear p))
::         ?.  ?=(%tas a.types)  ~
::         =.  b.pair  +:(rear p)  
::         ~&  pair
::         pair
::       ?.  ?=(b.types -:(rear p))  ~
::       =.  b.pair  +:(rear p)
::       ~&  pair
::       pair
::   ::    :: ?.  ?=(+.types -.i.t.p)
::   ::    ::   ~
::   ::    ::[+.-.p +.-.+.p]
::   ::    [1 2]
::   ::?~  l  ~
::   ::`(malt l)
::   [~ *(map @ @)]
::
::  get pail.saga from idea 
::  
:: ++  pail-from-idea
::   |=  =idea:neo
::   ^-  pail:neo
::   q.saga:(need idea)
::
++  en-pith
  |=  =cord
  ^-  pith
  %-  pave:neo
  ;;  path
  %-  stub  cord
::
::  produce list of values in axal
::
++  val
|=  axal=(axal:neo *)
^-  (list *)
~(val by ~(tar of:neo axal))
::
--