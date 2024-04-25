/@  node
/@  dm-diff
:-  [%node %dm-diff]
|=  nod=node
^-  dm-diff
:: =/  head  (@tas (crip (~(got by (malt a.g.nod)) %head)))
=/  date-el  (snag 0 c.nod)
=/  who-el  (snag 1 c.nod)
=/  text-el  (snag 2 c.nod)
=/  date
  %+  slav  %da
  (crip (~(got by (malt a.g.date-el)) %value))
=/  who
  %+  slav  %p
  (crip (~(got by (malt a.g.who-el)) %value))
=/  text
  (crip (~(got by (malt a.g.text-el)) %value))
[%msg who date text]
