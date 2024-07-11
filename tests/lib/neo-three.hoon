/-  neo
/+  *neo-three
/+  *test
=|  =farm:t
=.  our.farm  ~met
|%
++  of  of:neo
++  or  or:neo
++  pokes  *(set stud:neo)
++  atom
  |=  a=@
  ^-  pail:neo
  atom/!>(a)
++  gas-seed
  =|  =seed:t
  |=  lst=(list [pith note:t])
  ^+  seed
  ?~  lst
    seed
  =.  seed   (~(put of seed) i.lst)
  $(lst t.lst)
++  test-one
  =/  one=seed:t
    %-  gas-seed
    :~  [#/~met/foo %grow ~ (atom 3) pokes]
        [#/~met/foo/bar %grow ~ (atom 5) pokes]
    ==
  =.  farm  (~(plant plow farm) one)
  =/  two=seed:t
    %-  gas-seed
    :~  [#/~met/foo %grow ~ (atom 4) pokes]
        [#/~met/foo/bar %grow ~ (atom 6) pokes]
        [#/~met/foo/baz %grow ~ (atom 3) pokes]
    ==
  ::
  =.  farm  (~(plant plow farm) two)
  %-  print:(farm:etch farm)
  =/  tri=seed:t
    %-  gas-seed
    :~  [#/~met/foo %grow ~ (atom 5) pokes]
        [#/~met/foo/bar %grow ~ (atom 7) pokes]
        [#/~met/foo/bar/qux %grow ~ (atom 10) pokes]
        [#/~met/foo/baz %grow ~ (atom 1) pokes]
    ==
  =.  farm  (~(plant plow farm) tri)
  =/  fur=seed:t
    %-  gas-seed
    :~  [#/~met/foo/bar %cull ~]
    ==
  =.  farm  (~(plant plow farm) fur)
  %-  print:(farm:etch farm)
  (expect-eq *vase *vase)
--
