/@  storage-diff
/-  su=shrub-utils
|%
::
++  storage-poke
|=  [our=@p =storage-diff]
^-  card:neo
[/[p/our]/storage %poke storage-diff/!>(storage-diff)]
::
++  get-vase-at-pith-meta
|=  [deps=(map term (pair pith:neo lore:neo)) =pith:neo]
^-  (unit vase)
=/  meta  (~(got by deps) %meta)
(get-vase-saga-by-pith:su q.meta pith)
--