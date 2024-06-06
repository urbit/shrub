/@  deck
/@  node
/-  _/manx-utils
:-  [%node %deck-diff]
|=  nod=node
=*  mu  ~(. manx-utils nod)
=/  head  (got:mu %head)
?+    head  ~|(unknown-head/head !!)
    %set-current
  [%set-current (slav %ux (got:mu %slide))]
    %delete-slide
  [%delete-slide (slav %ux (got:mu %ux))]
    %new-slide
  =/  current
    ?~  c=(get:mu %current)  ~
    `(slav %ud (crip u.c))
  [%new-slide current]
    %move-slide
  =/  dir  (?(%up %down) (got:mu %direction))
  [%move-slide (slav %ux (got:mu %ux)) dir]
==
