/@  ingredient
::
=>  |%
      +$  id  @
    --
$+  recipe-type
$:  id=id
    name=@ta
    created-at=@da
    last-modified-at=(unit @da)
    ingredients=(list ingredient)
    blurb=@t
    instructions=(list @t)
    provenance=(unit $:(author=@p =id))
    comments=(list [author=@p posted-at=@da txt=@t])
==
