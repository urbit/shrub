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
    %new-slide
  [%new-slide ~]
==
