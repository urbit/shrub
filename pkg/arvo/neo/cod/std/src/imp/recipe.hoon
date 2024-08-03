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
    |_  [=bowl:neo =aeon:neo state=pail:neo]
      ++  init
        |=  old=(unit pail:neo)
        ^-  (quip card:neo pail:neo)
        :-  ~  (need old)
      ++  poke
        |=  [=stud:neo vax=vase]
        ^-  (quip card:neo pail:neo)
        ?>  =(stud %recipe)
        =/  the-recipe  !<(recipe vax)
        ?+  stud  !!
          %recipe-diff
            =/  poke  !<(recipe-diff vax)
            ?>  =(our.bowl ship.src.bowl)
            :-  ~  :: No cards
            ::
            ?+  -.poke  !!
              %add-ingredient
                :-  %recipe
                !>  %_  the-recipe
                      ingredients  (snoc ingredients.the-recipe ingredient.poke)
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
        ==
    --
--
