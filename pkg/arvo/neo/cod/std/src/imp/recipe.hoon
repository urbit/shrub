/@  recipe
/@  recipe-diff
/@  ingredient
::
^-  kook:neo
|%
  ++  state  pro/%recipe
  ++  poke  (sy %recipe-diff ~)
  ++  kids  *kids:neo
    :::+  ~  %y
    ::%-  ~(gas by *lads:neo)
    :::~  :-  [|/%ux |]  [pro/%recipes ~]
    ::==
  ++  deps
    ^-  deps:neo
    %-  my
    :~  :^  %src  &  [pro/%sig (sy %foods-diff %food ~)]
        :+  ~  %y
        %-  ~(gas by *lads:neo)
        :~  :-  [|/%ux |]  [pro/%food ~]
        ==
    ==
  ++  form
    ^-  form:neo
    |_  [=bowl:neo =aeon:neo state-pail=pail:neo]
      ++  init
        |=  old=(unit pail:neo)
        ^-  (quip card:neo pail:neo)
        :-  ~  (need old)
      ++  poke
        |=  [poke-stud=stud:neo poke-vase=vase]
        ^-  (quip card:neo pail:neo)
        ?>  =(poke-stud %recipe-diff)
        =/  the-recipe  !<(recipe q.state-pail)
        =/  poke  !<(recipe-diff poke-vase)
        ?>  =(our.bowl ship.src.bowl)
        :-  ~  :: No cards
        ::
        ?+  -.poke  !!
          %rename
            :-  %recipe
            !>  %_  the-recipe
                  name  name.poke
                ==
          ::
          %add-ingredient
            :-  %recipe
            !>  %_  the-recipe
                  ingredients  (snoc ingredients.the-recipe ingredient.poke)
                ==
          ::
          %add-instruction
            :-  %recipe
            !>  %_  the-recipe
                  instructions  (snoc instructions.the-recipe text.poke)
                ==
          ::%new-recipe
          ::  :-  (snoc here.bowl [%ux (mod eny.bowl (pow 16 16))])
          ::  [%make %recipe `recipe/!>(recipe.poke) ~]
          ::%put-recipe
          ::  :-  (snoc here.bowl [%ux id.poke])
          ::  [%make %recipe `recipe/!>(recipe.poke) ~]
          ::%del-recipe  !!
          ::  :-  (snoc here.bowl [%ux id.poke])
          ::  [%tomb %recipe ~]
        ==
    --
--
